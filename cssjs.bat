ECHO OFF 
SET templName=vanilla_project

:: %~~dp0 - variable, storing the driver letter and path of the bach file
SET source = %~dp0%templName%
:: %templName% - variable, storing the name of the folder, containing the target files

set /p "newFolderName=Enter name for the new project: "
md %newFolderName%
SET destination= %cd%\%newFolderName%

robocopy %~dp0%templName% %destination% /E
cmd /k 