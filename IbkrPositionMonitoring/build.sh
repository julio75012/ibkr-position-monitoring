#!/bin/bash

# Get the directory of the script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Print the script directory
echo "Script directory: $SCRIPT_DIR"


mkdir $SCRIPT_DIR/build
cd $SCRIPT_DIR/build
cmake ..
cmake --build .
