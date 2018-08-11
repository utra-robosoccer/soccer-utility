% IP Addresses for robots
rosshutdown;

localIp = '100.64.41.3';
gazeboIp = '100.64.38.143';
robotIp = '100.64.41.3';

useRobot = 0; 

if useRobot
    setenv('ROS_IP', localIp)
    setenv('ROS_MASTER_URI',strcat('http://', robotIp, ':11311'))
    rosinit(robotIp, 'NodeHost', localIp)
else
    setenv('ROS_IP', localIp)
    setenv('ROS_MASTER_URI',strcat('http://', gazeboIp, ':11311'))
    rosinit(gazeboIp, 'NodeHost', localIp)
end