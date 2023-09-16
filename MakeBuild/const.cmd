@echo off

for /r %%f in (..\*.uproject) do (set uproject_name=%%~nxf)
set uproject_path="%cd%\..\%uproject_name%"
set archived_path="%cd%"
