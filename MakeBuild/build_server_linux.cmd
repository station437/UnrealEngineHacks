call uat_path.cmd
call const.cmd
@echo on
call %uat_path% BuildCookRun -project=%uproject_path% -noP4 -platform=Linux -clientconfig=Shipping -serverconfig=Development -cook -server -serverplatform=Linux -noclient -build -stage -pak -nodebuginfo -archive -archivedirectory=%cd%

@IF EXIST "LinuxServer\" (
	tar cz -f linuxserver_latest.tar.gz LinuxServer
	rundll32 user32.dll,MessageBeep
)
