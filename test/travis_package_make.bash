#!/bin/bash -xve

#sync and make
rsync -av ./ ~/catkin_ws/src/pimouse_run_corridor

#cloneする
cd ~/catkin_ws/src/
git clone --depth=1 https://github.com/citueda/pimouse_ros.git
        # =1は最新

cd ~/catkin_ws/
catkin_make

