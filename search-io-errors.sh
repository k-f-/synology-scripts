# saves STDERR to user's home directory in time stamped .txt
# probably want to execute as: nohup ./serach-io-errors.sh &
find / -depth -iname * 2> $(date +"%F-%H-%M-%S")-io-errors.txt 1> /dev/null &
