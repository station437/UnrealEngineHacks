call uat_path.cmd
call const.cmd
@echo on
call %uat_path% BuildCookRun -project=%uproject_path% -noP4 -platform=Win64 -clientconfig=Shipping -serverconfig=Development -cook -allmaps -build -stage -pak -prereqs -nodebuginfo -archive -archivedirectory=%archived_path%
