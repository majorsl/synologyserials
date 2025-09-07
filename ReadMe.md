Since Synology's DSM 7.2 update, they removed visibility from the GUI from some of your drive details.  Most insanely, the ability to see your drive's serial number.

This script will output details about your drives so you can find which drive goes to which serial number without removing it from a bay.  The output will look like
the below where ####### will be your drive's serial.

Bay 1 (/dev/sda) → Model: WD80EFAX-68KNBN0 | Capacity: 7452.04 GB | Serial: #######
Bay 2 (/dev/sdb) → Model: ST8000NM0055-1RM112 | Capacity: 7452.04 GB | Serial: #######
Bay 3 (/dev/sdc) → Model: ST8000NM0055-1RM112 | Capacity: 7452.04 GB | Serial: #######
Bay 4 (/dev/sdd) → Model: WD60EFRX-68MYMN1 | Capacity: 5589.03 GB | Serial: #######
Bay 5 (/dev/sde) → Model: WD60EFAX-68SHWN0 | Capacity: 5589.03 GB | Serial: #######
Bay 6 (/dev/sdf) → Model: WD60EFAX-68SHWN0 | Capacity: 5589.03 GB | Serial: #######
Bay 7 (/dev/sdg) → Model: WD60EFRX-68L0BN1 | Capacity: 5589.03 GB | Serial: #######
Bay 8 (/dev/sdh) → Model: ST8000NM0055-1RM112 | Capacity: 7452.04 GB | Serial: #######

SSH into your Synology, save the script where you find it handy to have and run it.  It does not need to be run as root/sudo.
