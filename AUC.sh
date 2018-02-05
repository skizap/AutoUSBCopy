>nul mkdir /root/AutoUSBCopy
for (( ; ; ))
do
	>nul cd /media/root/*
	if [ $? -eq 0 ]; then
		echo Removable media detected. Starting copying...
		>nul cp -r /media/root/* /root/AutoUSBCopy
		clear
		if [ $(du -hs /media/root/* | cut -f1) == $(du -hs /root/AutoUSBCopy | cut -f1) ]
			echo -e "\033[1;32mThe copying process has been finished successfully."
			exit
		else
			echo -e "\033[1;31mThe copying process has failed. The removable media has been removed suddenly."
			exit
		fi
	else
		clear
		echo Waiting for the removable media...
	fi
done
