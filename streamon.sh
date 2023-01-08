status_file=/var/log/stream.status.log
status=$(cat $status_file)
if [ $status == "offline" ];then
	source /opt/SabakuNoBot/BotEnv/bin/activate
	echo "online check" | python /opt/SabakuNoBot/BotEnv/BotReddit.py
	exit_code=$?
	if [ $exit_code -eq 0 ];then
		echo "online" > $status_file
	fi
else
	exit 0
fi
