# so clean code right, dont
# judge how dope this looks

#!/bin/bash

echo "controller.sh - made with love by dima"
echo "----------------------------------------"
echo "build  | make the project"
echo "clean  | remove build files"
echo "init   | initialize the module"
echo "unload | unload module from the kernel"
echo "exit   | exit the script"
echo "----------------------------------------"

while true; do
    read -p "Enter a command: " user_input
    case $user_input in
        "build")  make ;;
        "clean")  make clean ;;
        "init")   sudo insmod dspeaker.ko; sudo dmesg | tail -n 1 ;;
        "unload") sudo rmmod dspeaker; sudo dmesg | tail -n 1 ;;
        "exit") echo -e "\ngoodbye!\n"; break ;;
        *) echo -e "\ninvalid command\n" ;;
    esac
done
