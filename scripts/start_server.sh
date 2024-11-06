#!/bin/bash
# Navigate to the app directory
cd /home/ec2-user/trainSchedule
# Stop any running instances of the app
pm2 stop trainSchedule || true
# Install dependencies (if necessary)
npm install
# Start the application
pm2 start app.js --name trainSchedule
