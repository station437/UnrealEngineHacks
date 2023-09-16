@rem place it to project root folder
setlocal
@echo on
rd /s /q Binaries
rd /s /q Intermediate
powershell -command "$uproject = Get-ChildItem "*.uproject" -Name; $bin = & { (Get-ItemProperty 'Registry::HKEY_CLASSES_ROOT\Unreal.ProjectFile\shell\rungenproj' -Name 'Icon' ).'Icon' }; $bin + ' -projectfiles %cd%\' + $uproject" | cmd.exe
