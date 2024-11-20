#!/bin/bash

LAUNCH_DIR="/root/ros_ws/src/EE585_Hilti/launch"
FILES=("mapping_hesai_auto_exp01.launch" "mapping_hesai_auto_exp03.launch" "mapping_hesai_auto_exp07.launch")

for FILE in "${FILES[@]}"; do
    echo "Launching $FILE..."
    roslaunch "$LAUNCH_DIR/$FILE"
    echo "$FILE completed."
    
    # read -p "Press Enter to proceed to the next launch file..."
done

echo "All launch files executed."