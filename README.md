# Service Uptime Checker (Menu Driven Shell Script)

This project is a simple menu driven shell script made in Unix.  
It allows the user to:

1. Check if a service is running  
2. Restart a service  
3. List all running services  
4. Exit the program

The script uses systemctl to check the status of services like ssh, apache2, etc.

## How to Run

1. Give permission to the file:
   chmod +x service_menu.sh

2. Run the script:
   ./service_menu.sh

## Requirements
- Linux/Unix system
- systemctl (most Linux distros have it)
- sudo access if restarting services

## Example Usage
After running the script, you will see a menu where you can type a choice number.  
Based on your choice, the script checks or restarts the service.

## Purpose
This was made as a basic Unix shell scripting project for practice/college assignment.
<img width="1454" height="848" alt="image" src="https://github.com/user-attachments/assets/5ea4b160-99f6-49df-89d1-773a98e55c31" />
