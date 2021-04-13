#!/bin/bash
# Bash Menu Script Example

PS3='Please enter your choice: '
options=("for describing" "for changing min size to 1" "enter in standby" "stop instance" "start instance" "exit standby" "min size to 2" "Quit")
select opt in "${options[@]}"
do
    case $opt in
	    "for describing") 
            echo "aws autoscaling describe-auto-scaling-instances     --instance-ids \$instance_id"
            ;;
        "for changing min size to 1")
            echo "aws autoscaling update-auto-scaling-group --auto-scaling-group-name opem-team-b-challenge-version-4-WebServerGroup-2TCN8VN3PDBS --launch-configuration-name opem-team-b-challenge-version-4-LaunchConfig-1RH10DNQHJOD0 --min-size 1"
            ;;
        "enter in standby")
            echo "aws autoscaling enter-standby --instance-ids \$instance_id --auto-scaling-group-name opem-team-b-challenge-version-4-WebServerGroup-2TCN8VN3PDBS --should-decrement-desired-capacity"
            ;;
	 "stop instance")
            echo "aws ec2 stop-instances --instance-ids \$instance_id"
            ;;
	 "start instance")
            echo "aws ec2 start-instances --instance-ids \$instance_id"
            ;;

         "exit standby")
            echo "aws autoscaling exit-standby --instance-ids \$instance_id --auto-scaling-group-name opem-team-b-challenge-version-4-WebServerGroup-2TCN8VN3PDBS"
            ;;
         "min size to 2")
            echo "aws autoscaling update-auto-scaling-group --auto-scaling-group-name opem-team-b-challenge-version-4-WebServerGroup-2TCN8VN3PDBS --launch-configuration-name opem-team-b-challenge-version-4-LaunchConfig-1RH10DNQHJOD0 --min-size 2"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option";;
    esac
done
