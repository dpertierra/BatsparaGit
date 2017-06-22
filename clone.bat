@echo off
set gitclone=git clone
set /p guardaren= Escriba donde desea clonar el repositorio:
set cd=cd
set /p linkrepo= Escriba el link del repositorio que desea clonar:
set "gitcloneconrepo= %gitclone% %linkrepo%"
set "guardar= %cd% %guardaren%"
%guardar%
%gitcloneconrepo%
echo se clono correctamente
pause