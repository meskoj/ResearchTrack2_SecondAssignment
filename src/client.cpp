#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <assignment_2_2023/PlanningAction.h>
#include <assignment_2_2023/GetCoordinates.h>
#include <assignment_2_2023/Interface.h>
#include <nav_msgs/Odometry.h>
#include <assignment_2_2023/robotInfo.h>
#include <assignment_2_2023/robotInfoSrv.h>
#include <iostream>
#include <cstdlib>

using namespace std;

// Define global variables to store the information 
int sel = 0;
double x = 0; 
double y = 0;
double actual_x, actual_y, actual_linear_x, actual_angular_z;
bool cancel = false;
bool goalSent = true;
bool published = false;

void OdometryCallback(const nav_msgs::Odometry::ConstPtr& msg) {
    // Get position and velocity from the msg in the /odom topic
    actual_x = msg->pose.pose.position.x;
    actual_y = msg->pose.pose.position.y;
    actual_linear_x = msg->twist.twist.linear.x;
    actual_angular_z = msg->twist.twist.angular.z;
}

void interfaceCallback(const assignment_2_2023::Interface::ConstPtr& msg){
    sel = msg->sel;
    x = msg->x;
    y = msg->y;
    if (sel == 1) {
        goalSent = false;
        
    } 
    else if (sel == 2) {
        cancel = true;
    } 
    else if (sel == 3) {
        ROS_INFO("Killing ROS node...");
        ros::requestShutdown();
    } 
}

bool setLastCoordinates(assignment_2_2023::GetCoordinates::Request& req, assignment_2_2023::GetCoordinates::Response& res) {
    res.x = x;
    res.y = y;
    return true;
}

int main(int argc, char** argv) {

    // Initialize the ROS node
    ros::init(argc, argv, "client");
    ros::NodeHandle nh;

    // Subscribe to odom topic to retrieve information about position and velocities
    ros::Subscriber sub_pose = nh.subscribe("/odom", 1, OdometryCallback);
    
    // Subscribe to the interface topic to retrieve information
    ros::Subscriber sub_interface = nh.subscribe("/interface", 1, interfaceCallback);

    // Publish on the topic actual info a robotInfo msg
    ros::Publisher pub_pose = nh.advertise<assignment_2_2023::robotInfo>("actual_info", 1);

    // Implement server for node B
    ros::ServiceServer lastCoordinates = nh.advertiseService("last_coordinates", setLastCoordinates);

    actionlib::SimpleActionClient<assignment_2_2023::PlanningAction> ac("/reaching_goal", true);

    // Wait for the action server to start
    ROS_INFO("Waiting for action server to start.");
    ac.waitForServer();
    ROS_INFO("Action server started, sending goal.");
    
    // Send goal to the action server
    assignment_2_2023::PlanningGoal goal;
	while(1){
    if (cancel == true) {
        // If there is an active goal to cancel, cancel it
        if (ac.getState() == actionlib::SimpleClientGoalState::ACTIVE) {
            ac.cancelGoal();
            ROS_INFO("The target has been cancelled successfully!!");
            cancel = false;
        } 
        else {
            // Display an error message if there is no active goal
            ROS_ERROR("Error. There's no target to cancel.");
            cancel = false;
        }
    }
	// If the goal is not sent yet, send it
        if (goalSent == false) {
            goal.target_pose.pose.position.x = x;
            goal.target_pose.pose.position.y = y;
            ac.sendGoal(goal);
            goalSent = true;
            published = false;
        }
        
	// Publish data on the topic
        assignment_2_2023::robotInfo msg;
        msg.x = actual_x;
        msg.y = actual_y;
        msg.vel_x = actual_linear_x;
        msg.vel_z = actual_angular_z;

        pub_pose.publish(msg);
        
        // If the goal has been reached and this result has not been published yet, publish it
        if (ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED and published == false){
            ROS_INFO("The goal has been reached");
            published = true;
        }
        ros::spinOnce();
	}
    return 0;
}
