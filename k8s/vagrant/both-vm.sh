#!/bin/bash

# Function to bring up both VMs
vagrant_up() {
    echo "Bringing up both VMs..."
    cd master && vagrant up &
    cd node && vagrant up &
    wait
    echo "Both VMs are up."
}

# Function to destroy both VMs
vagrant_destroy() {
    echo "Destroying both VMs..."
    cd master && vagrant destroy -f &
    cd node && vagrant destroy -f &
    wait
    echo "Both VMs are destroyed."
}

# Main script
echo "Choose an action:"
echo "1. Bring up both VMs"
echo "2. Destroy both VMs"

read choice

case $choice in
    1)
        vagrant_up
        ;;
    2)
        vagrant_destroy
        ;;
    *)
        echo "Invalid choice. Please choose either 1 or 2."
        ;;
esac
