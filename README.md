# newhost
This bash script will append an entry to the /etc/hosts file, associating the provided IP and hostname. You will see a message indicating whether the operation was successful or not.

The script is designed to take 2 arguments:
  -ARGUMENT 1 = IP
  -ARGUMENT 2 = hostname

The script incorporates a check for valid IP address format using regular expressions through grep.

USAGE:
sudo newhost "<IP>" "<hostname>"
