#List of Kiosk's IP Addresses assigned to Variable that corresponds to their PL Number.
$PLK05 = "xxx.xxx.xxx.xxx"
$PLK04 = "xxx.xxx.xxx.xxx"
$PLK07 = "xxx.xxx.xxx.xxx"
$PLK12 = "xxx.xxx.xxx.xxx"
$PLK06 = "xxx.xxx.xxx.xxx"
$PLK01 = "xxx.xxx.xxx.xxx"
$PLK09 = "xxx.xxx.xxx.xxx"
$PLK08 = "xxx.xxx.xxx.xxx"
$PLK16 = "xxx.xxx.xxx.xxx"
$PLK03 = "xxx.xxx.xxx.xxx"
$PLK17 = "xxx.xxx.xxx.xxx"
$PLK14 = "xxx.xxx.xxx.xxx"
$PLK02 = "xxx.xxx.xxx.xxx"
$PLK18 = "xxx.xxx.xxx.xxx"
$PLK15 = "xxx.xxx.xxx.xxx"
$PLK13 = "xxx.xxx.xxx.xxx"

$Kiosks = @($PLK05, $PLK04, $PLK07, $PLK12, $PLK06, $PLK01, $PLK09, $PLK08, $PLK16, $PLK03, $PLK17, $PLK14, $PLK02, $PLK18, $PLK15, $PLK13)

#Command that shows what devices (in our case Firesticks) are currently connected. This command is mostly informational.
.\adb devices

foreach ($PL in $Kiosks) 
{
    .\adb connect $PL
    .\adb -s $PL shell reboot
}
#Once all rebooted all firesticks are disconnected and exit messages mean it is safe to close the window.
.\adb disconnect
echo "Done rebooting Firesticks on Kiosk"
Read-Host -Prompt "Press Enter to Exit"