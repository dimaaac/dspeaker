#!/bin/bash

echo "controller.sh"
echo "ofc made with love by dima"
echo ""
echo "enter the command you want to run"
echo "---------------------------------"
echo "build  | make the project"
echo "clean  | remove build files"
echo "init   | initialize the module"
echo "unload | unload module from the"
echo "         the kernel"
echo ""
echo "exit - exit the script"
echo #

while true; do
    read -p "Enter a command " user_input

    case $user_input in
        "build")
            echo "building..."
            echo ""
            make
            ;;
        "clean")
            echo "cleaning..."
            echo ""
            make clean
            ;;
        "init")
            echo "initializing dspeaker..."
            echo ""
            sudo insmod dspeaker.ko
            ;;
        "unload")
            echo "unloading dspeaker..."
            echo ""
            sudo rmmod dspeaker
            ;;
        "exit")
            echo "goodbye!"
            echo""
            break
            ;;
        *)
            echo "invalid command"
            ;;
    esac
done
