#!/bin/bash

check_service() {
    echo -n "Enter service name: "
    read s
    echo -n "Checking $s... "
    if systemctl is-active --quiet "$s"; then
        echo "Running"
    else
        echo "Not Running"
    fi
}

restart_service() {
    echo -n "Enter service name: "
    read s
    echo "Restarting $s..."
    sudo systemctl restart "$s"
    if systemctl is-active --quiet "$s"; then
        echo "$s restarted"
    else
        echo "Failed to restart"
    fi
}

list_running() {
    systemctl list-units --type=service --state=running
}

while true; do
    echo "1. Check Service"
    echo "2. Restart Service"
    echo "3. List Running Services"
    echo "4. Exit"
    echo -n "Enter choice: "
    read ch

    case $ch in
        1) check_service ;;
        2) restart_service ;;
        3) list_running ;;
        4) exit ;;
        *) echo "Invalid choice" ;;
    esac
done
