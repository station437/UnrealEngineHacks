call uat_path.cmd
call const.cmd
@echo on
call %uat_path% BuildCookRun -ScriptsForProject=%uproject_path% -nocompileeditor -nop4 -project=%uproject_path% -cook -stage -archive -archivedirectory=%archived_path% -package -compressed -ddc=DerivedDataBackendGraph -nodebuginfo -targetplatform=HTML5 -build -clientconfig=Shipping -utf8output -compile
