@echo off
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
pause