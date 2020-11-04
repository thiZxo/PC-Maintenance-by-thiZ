@echo off
echo
echo
echo
echo
echo Disable HPET (delete if forced on)
bcdedit /deletevalue useplatformclock
echo
echo
echo
echo
@echo Disable dynamic tick (laptop power savings)
bcdedit /set disabledynamictick yes
echo
echo
echo
echo
@echo Disable synthetic timers
bcdedit /set useplatformtick yes
