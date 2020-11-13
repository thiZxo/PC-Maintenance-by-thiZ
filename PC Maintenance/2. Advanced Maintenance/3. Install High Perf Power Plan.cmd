@echo off
ECHO.                                        ****************************
ECHO.                                        INSTALLING NEW POWER PLAN...
ECHO.                                        ****************************
	powercfg -import "%~dp02. Advanced Maintenance\SuperiorPerformance.pow" 77777777-7777-7777-7777-777777777777
ECHO.                                        *************************************
ECHO.                                        SETTING NEW POWER PLAN AS 'ACTIVE'...
ECHO.                                        *************************************
	powercfg -SETACTIVE "77777777-7777-7777-7777-777777777777"
ECHO.                                        ******************************
ECHO.                                        REMOVING UNUSED POWER PLANS...
ECHO.                                        ******************************
	for /f "skip=2 tokens=2,4 delims=:()" %%G in ('powercfg -list') do (
	powercfg -delete %%G
	)
ECHO.                                        *****
ECHO.                                        DONE!
ECHO.                                        *****

pause