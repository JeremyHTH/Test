set up work space
```
sudo nano ~/.bashrc
# In the bashrc
source ~/catkin_ws/devel/setup.bash
```

# Create pkg
```
catkin_create_pkg tutorial rospy
cd ..
catkin_make
```