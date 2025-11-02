# lab1
terminal1
```
roscore
```
terminal2
rosrun turtlesim turtlesim_node
terminal3
```
rosrun turtlesim turtle_tekeop_key
```

# lab2
terminal1
``` roscore ```
terminal2
``` cd ~/catkin_ws
source devel/setup.bash
rosrun hello_world my_hello_world_node
rosrun hello_world hello.py
```

# lab4
terminal1
roscore
terminal2
rosrun turtlesim turtlesim_node
terminal3
```
rosrun turtlesim turtle_tekeop_key
```
terminal4
rosservice list
rosservice type clear
rosservice call clear
rosservice type spawn| rossrv show
rosservice call spawn 2 2 0.2 ""
rosparam list
rosparam set background_r 150
rosservice call clear
rosparam get background_g
rosparam get /
rosparam dump params.yaml
rosparam load params.yaml copy
rosparam get copy/background_b

# lab3
rosrun rqt_graph rqt_graph

rostopic -h
//for look subcommand
rostopic echo /turtle1/cmd_vel
//show data on specific topic that ponited at the last.
new erminal:
rostopic list -h
rstopic list -v
rostopic type /turtle1/cmd_vel
rosmsg show geometry_msgs/Twist

rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0,0.0,0.0]' '[0.0,0.0,1.8]'
rostopic pub /turtle1/cmd_vel geometry_msgs/Twist -r 1 -- '[2.0,0.0,0.0]' '[0.0,0.0,1.8]'

gotorqt_graph/
new terminal:
rosrun rqt_plot rqt_plot

in the window topic:/turtle1/pose/x
/turtle1/pose/y
pull it out and show the graph;
-ALL 
/turtle1/pose/theta

# lab5
new terminal:
cd ~/catkin_ws/src
catkin_create_pkg learning_topic roscpp rospy std_msgs geometry_msgs turtlesim
new terminal
roscore
new terminal 
rosrun turtlesim turtlesim_node
new terminal
rosrun learning_topic velocity_publisher
new terminal
rosrun learning_topic pose_subscriber

shut all.

//former cases showed usage of std msg type.now we define a msgtype,and write the publisher and subscriber shit.
//no business with da dumbass bitch turtle nigga.
//the topic model:
ROSMASTER
    |
/---------------------------------------------------------------------------\
Person_publisher--learning_topic::Person--> topic(/person_info)--learning_topic::Person-->person_subscriber

//is this shit just define a object person and build a msg transt channel?like that dumb turtle nigga's finally showcase.

new terminal;
roscore
new  terminal;
rosrun learning_topic person_publisher
new terminal;
rosrun learning_topic person_subscriber

现有的发布/订阅：还能继续发消息（除非节点重启）。

新启动的节点：无法再与其他节点建立连接，因为 Master 不在。
shut all/


# lab6
new terminal'
roscore
new terminal
rosrun turtlesim turtlesim_node
new terminal
rosrun learning_service turtle_spawn


new terminal;
roscore;
new terminal;
rosrun turtlesim turtlesim_node
new terminal;
rosrun learning_service turtle_command_server
rosservice call /turtle_command "{}"


new terminal;
roscore
new terminal;
rosrun learning_service person_server
new terminal;
rosrun learning_service person_client







