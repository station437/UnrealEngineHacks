@rem place it to project root folder
setlocal
@echo on
rd /s /q Binaries
rd /s /q Intermediate
rd /s /q DerivedDataCache
del /f /q *.sln *.slnx
powershell -command "$uproject = (Get-ChildItem '*.uproject').FullName; $bin = & { (Get-Item 'Registry::HKEY_CLASSES_ROOT\Unreal.ProjectFile\shell\rungenproj\command').GetValue('') }; $bin -replace '`"%1`"|%%1', $uproject" | cmd.exe
