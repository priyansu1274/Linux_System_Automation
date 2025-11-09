#!/bin/bash
echo "     SYSTEM MAINTENANCE MENU"
echo "-------------------------------------"
echo "1) Run Backup"
echo "2) Run System Update & Cleanup"
echo "3) Run Log Monitoring"
echo "4) Exit"

while true
do
	echo -n "Enter your choice: "
	read choice

	case $choice in
	1)
        	echo "Running Backup Script..."
        	bash backup.sh
            	echo "Backup Completed!"
            	;;
        2)
            	echo "Running Update & Cleanup..."
            	bash update.sh
            	echo "Update & Cleanup Done!"
            	;;
        3)
            	echo "Running Log Monitoring..."
            	bash log_monitor.sh
            	echo "Monitoring Finished!"
            	;;
        4)
            	echo "Exiting...!!!!!!"
            	exit 0
            	;;
	*)
            	echo "Invalid option. Please enter [1-4] for further operation."
            	;;
    	esac
    	echo ""
done
