echo "Enter your choice (start/stop/restart):"
read choice

case $choice in
start)
echo "Starting the service..."
;;
stop)
echo "Stopping the service..."
;;
restart)
echo "Restarting the service..."
;;
*)
echo "Invalid choice. Please choose start, stop or restart."
;;
esac