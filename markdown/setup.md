# Git

``` bash
sudo apt install git
git config --global user.name "jeremyHTH"

git config --global credential.helper store

```

# sound problem
```bash

killall speech-dispatcher
sudo apt-get remove speech-dispatcher

```

# Keychron function key
```bash
# testing
echo 0 | sudo tee /sys/module/hid_apple/parameters/fnmode
#forever
echo "options hid_apple fnmode=0" | sudo tee -a /etc/modprobe.d/hid_apple.conf
sudo update-initramfs -u #maybe (not yet tested)
```

# Appearance 
```bash
sudo apt install gnome-tweak-tool
sudo apt install gnome-shell-extensions

# theme
git clone https://github.com/vinceliuice/Orchis-theme.git
cd Orchis-theme/
./install.sh -t orange

# paper icon
sudo add-apt-repository ppa:snwh/ppa
sudo apt update
sudo apt-get install paper-icon-theme:
```

---
# Ros 

## Install Ros
```bash
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install ros-noetic-desktop-full
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
```

## Create catkin_ws
```bash 
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc
```

# Nvidia-driver installation
```bash
# Remove existing CUDA versions
sudo apt --purge remove "cublas*" "cuda*"
sudo apt --purge remove "nvidia*"
sudo rm -rf /usr/local/cuda*
sudo apt-get autoremove && sudo apt-get autoclean

# Reboot to remove cached files 
reboot

# After reboot
sudo apt-get clean

# check all available nvidia driver version in the repository
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install ubuntu-drivers-common

# check which nvidia driver version available for your own graphic card
ubuntu-drivers devices

# Remember do not install the nvidia-driver-server
# xxx is the nvidia-driver version that you want to install
sudo apt install nvidia-driver-xxx
reboot
```

# CUDA

```bash
# Deb(local) (CUDA 11.4)
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.4.4/local_installers/cuda-repo-ubuntu2004-11-4-local_11.4.4-470.82.01-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2004-11-4-local_11.4.4-470.82.01-1_amd64.deb
sudo apt-key add /var/cuda-repo-ubuntu2004-11-4-local/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda

gedit ~/.bashrc
export PATH=/usr/local/cuda-11.4/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-11.4/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export CUDA_HOME=/usr/local/cuda
source ~/.bashrc
```

# cuDNN 
``` bash
# Go to https://developer.nvidia.com/rdp/cudnn-archive to find out the correct Platform and correct CUDA version for your own situation
# Download cuDNN Runtime Library + cuDNN Developer Library by clicking them
# cuDNN Code Samples and User Guide is optional
# Navigate to your <cudnnpath> directory containing the cuDNN Debian file.
# Replace x.x and 8.x.x.x with your specific CUDAand cuDNN versions and package date

sudo dpkg -i libcudnn8_x.x.x-1+cudax.x_amd64.deb
sudo dpkg -i libcudnn8-dev_8.x.x.x-1+cudax.x_amd64.deb
sudo dpkg -i libcudnn8-samples_8.x.x.x-1+cudax.x_amd64.deb (optional)

(Example for install cuDNN 8.0.5 which compatible with CUDA 10.1 in Ubuntu 18.04)
# The following codes must be installed in order
sudo dpkg -i libcudnn8_8.0.5.39-1+cuda10.1_amd64.deb
sudo dpkg -i libcudnn8-dev_8.0.5.39-1+cuda10.1_amd64.deb
sudo dpkg -i libcudnn8-samples_8.0.5.39-1+cuda10.1_amd64.deb (optional)

sudo cp /usr/include/cudnn.h /usr/local/cuda/include
sudo chmod a+x /usr/local/cuda/include/cudnn.h
cat /usr/include/cudnn_version.h | grep CUDNN_MAJOR -A 2

# Show below information means install cuDNN success
  #define CUDNN_MAJOR 8
  #define CUDNN_MINOR 0
  #define CUDNN_PATCHLEVEL 5
  --
  #define CUDNN_VERSION (CUDNN_MAJOR * 1000 + CUDNN_MINOR * 100 + CUDNN_PATCHLEVEL)

  #endif /* CUDNN_VERSION_H */
```

# Realsense-viewer 
```bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE
sudo add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo $(lsb_release -cs) main" -u
sudo apt-get install librealsense2-dkms
sudo apt-get install librealsense2-utils
sudo apt-get install librealsense2-dev
sudo apt-get install librealsense2-dbg
```

# Realsense ROS-Wrapper 
```bash
cd ~/catkin_ws
cd src
git clone https://github.com/IntelRealSense/realsense-ros.git
cd realsense-ros/
git checkout ***the most stable version and support with your realsense-viewer version***
cd ..

git clone https://github.com/pal-robotics/ddynamic_reconfigure
cd ddynamic_reconfigure/
git checkout ***the most stable version***
cd ..

catkin_make     or      catkin build
```

# Install mySQL
```bash 
sudo apt install mysql-server
sudo mysql_secure_installation
```

# Setup Lan_ROS
```bash 
# add two line to both master and slave 

#Master
export ROS_MASTER_URI=http://192.168.1.1:11311
export ROS_IP=192.168.1.1

# slave
export ROS_MASTER_URI=http://192.168.1.1:11311
export ROS_IP=192.168.1.2

# goto etc 
cd ..
cd .. 
cd etc
sudo gedit hosts
#add to both master and slave
192.168.1.1 ox06
192.168.1.2 ox03


#remember to ~/.bashrc after change 
```