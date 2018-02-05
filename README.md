# AutoUSBCopy
Connect a pendrive and the PC will copy all the content to its hard drive automatically. It's a good fast gathering tool.
You can run it on a Raspberry Pi so you can carry a portable data gathering hardware easily.

## Notes

- The PC can have only ONE usb stick plugged in (the target one), otherwise the script won't be able to work properly because it'll copy an unwanted data.

- If you run the script and suddenly you get the following error: "The copying process has failed. The removable media has been removed suddenly.", run this command: `rm -rf /media/root/*` ONLY when there isn't ANY removable media connected, otherwise you will remove some important files.
