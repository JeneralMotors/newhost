# newhost
This bash script will append an entry to the /etc/hosts file, associating the provided IP and hostname. You will see a message indicating whether the operation was successful or not.

The script is designed to take an ip address as argument 1 and a hostname as argument 2

The script features validation for IP address format using regular expressions through grep.

USAGE:
sudo newhost "IP" "hostname"
