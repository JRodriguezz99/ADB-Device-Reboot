# ADB-Device-Reboot
Reboot Devices connect through Android Debug Bridge

Ran into an issue where I was responsible for rebooting several devices that were spread across a large area. Instead of having to go to every device at different location I gathered the IP addresses of each device and set it to go through a loop and reboot.

Make sure that the devices are on a network that your machine is connected to as well. After getting the IP Address of each device, and running the code once, you do have to unfortuantely manually click allow or authorize one the device. Running the code prompts you on the device if you allow the computer to connect and it displays the machine's RSA fingerprint.

After allowing, code should be able to zip through the loop and reboot all devices. 

Powershell script is made to connect to the device, reboot, then disconnect from all devices. After its done it will prompt you to hit enter to exit.
