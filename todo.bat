@echo off
:inicio
set /p hacer= Que desea hacer?
goto %hacer%

:add
set configN=git config --global user.name "Diego Pertierra"
set configM=git config --global user.email dpertierra@hotmail.com
set configcred= git config --global credential.helper wincred
%configN%
%configM%
%configcred%
cls
set gitadd=git add
set gitcommit= git commit -m
set gitpush= git push
set cd=cd
set /p dondeestaelarchivo= Escriba donde esta el archivo o la carpeta que desea agregar:
set /p archivo= Escriba el nombre del archivo que desea agregar:
set /p mensaje= Escriba el mensaje para el commit:
set "gitaddconarchivo= %gitadd% %archivo%"
set "ubicacion= %cd% %dondeestaelarchivo%"
set "gitmensaje= %gitcommit%%mensaje%"
%ubicacion%
%gitaddconarchivo%
%gitmensaje%
%gitpush%
echo se actualizo correctamente
set /p algomas= Desea hacer otra cosa?
if %algomas% == "Si" | %algomas% == "si" | %algomas% == "SI"(goto start)
else(EXIT)
goto start



:clone
cls
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
goto start