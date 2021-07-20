#!/bin/bash
mkdir -p /mnt/u/wsl-ros

touch /mnt/u/wsl-ros/wsl-ros-log.txt
echo "$(date): Backup from $(hostname) [wsl-ros version: $WSL_ROS_VER]" >> /mnt/u/wsl-ros/wsl-ros-log.txt

tar --exclude='/home/student/.local' \
    --exclude='/home/student/.cache' \
    --exclude='/home/student/.config'\
    --exclude='/home/student/.atom'  \
    --exclude='/home/student/.wsl_ros_ver' \
    --exclude='/home/student/.vscode-server' \
    --exclude='/home/student/mdk-200720' \
    --exclude='/home/student/mdk' \
    -cvjf /mnt/u/wsl-ros/ros-backup.tar.gz /home/student
