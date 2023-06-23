steps : 
	open terminal 

	run : crontab -e
	# if first time select the editor

	# add below line to cronfile which is opened
	every minute : * * * * * bash /path/to/script
	# ex : * * * * * bash /home/background_changer.sh

	save & exit
	# you will get this message : crontab: installing new crontab


options :
	every hour : 0 * * * * bash /path/to/script
	or
	every hour : @hourly bash /path/to/script

	every day : 0 0 * * * bash /path/to/script
	or
	every day : @daily bash /path/to/script

	run at startup : @reboot bash /path/to/script


debugging :
	if having any error try running this cron job
	* * * * *  /path/to/script.sh >> /path/to/logfile.txt 2>&1 
	# 2>&1 if to logging both stdout and stderr to file


please ensure to install :
	sudo apt-get install xorg

	