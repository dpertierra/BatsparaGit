@echo off
setlocal EnableDelayedExpansion


:inicio
set /p hacer= Que desea hacer?
goto %hacer%
set configN=git config --global user.name "Diego Pertierra"
set configM=git config --global user.email dpertierra@hotmail.com
set configcred= git config --global credential.helper wincred
%configN%
%configM%
%configcred%



:add
cls
set configN=git config --global user.name "Diego Pertierra"
set configM=git config --global user.email dpertierra@hotmail.com
set configcred= git config --global credential.helper wincred
set gitadd=git add
set gitcommit= git commit -m 
set gitpush= git push
set cd=cd
set inicio=inicio
set /p dondeestaelarchivo= Escriba donde esta el archivo o la carpeta que desea agregar:
if %dondeestaelarchivo% equ %inicio% (
cls
goto inicio
)
set /p archivo= Escriba el nombre del archivo que desea agregar:
set /p mensaje= Escriba el mensaje para el commit:
set mensaje= "%mensaje%"
set "gitaddconarchivo= %gitadd% %archivo%"
set "ubicacion= %cd% %dondeestaelarchivo%"
set gitmensaje= %gitcommit% %mensaje%
%configN%
%configM%
%configcred%
%ubicacion%
%gitaddconarchivo%
%gitmensaje%
%gitpush%
echo se actualizo correctamente
pause
cls
set /p algomas= Desea hacer otra cosa?
goto %algomas%



:clone
cls
set gitclone=git clone
set inicio=inicio
set /p guardaren= Escriba donde desea clonar el repositorio:
if %dondeestaelarchivo% equ %inicio% (
cls
goto inicio
)
set cd=cd
set link=https://github.com/
set barra=/
set /p usuario= Escriba el usuario donde esta el repositorio que desea clonar:
set /p repositorio= Escriba el nombre del repositorio que desea clonar:
set "gitcloneconrepo= %gitclone% %link%%usuario%%barra%%repositorio%"
set "guardar= %cd% %guardaren%"
%guardar%
%gitcloneconrepo%
echo se clono correctamente
pause
cls
set /p algomas= Desea hacer otra cosa?
goto %algomas%


:pull
cls
set gpull=git pull
set inicio=inicio
set /p guardaren= Escriba donde desea pullear:
if %guardaren% equ %inicio% (
cls
goto inicio
)
set cd=cd
set "guardar= %cd% %guardaren%"
%guardar%
%gpull%
echo se pulleo correctamente
pause
cls
set /p algomas= Desea hacer otra cosa?
goto %algomas%

:removefile
cls
set rm=git rm
set cd=cd
set gitcommit= git commit -m
set gitpush= git push
set inicio=inicio
set /p carpeta= ingrese la ubicacion del archivo:
if %carpeta% equ %inicio% (
cls
goto inicio
)
set /p archivo=ingrese el nombre del archivo que desea eliminar:
set /p mensaje= Escriba el mensaje para el commit:
set mensaje= "%mensaje%"
set "ubicacion=%cd% %carpeta%"
set "eliminar= %archivo%"
set gitmensaje= %gitcommit% %mensaje%
%gitmensaje%
%ubicacion%
%eliminar%
%gitmensaje%
%gitpush%
pause
cls
set /p algomas= Desea hacer otra cosa?
goto %algomas%



:removefolder
cls
set rm=git rm -r
set cd=cd
set gitcommit= git commit -m
set gitpush= git push
set inicio=inicio
set /p carpeta= ingrese la ubicacion del archivo:
if %carpeta% equ %inicio% (
cls
goto inicio
)
set /p archivo=ingrese el nombre de la carpeta que desea eliminar:
set /p mensaje= Escriba el mensaje para el commit:
set mensaje= "%mensaje%"
set "ubicacion=%cd% %carpeta%"
set "eliminar= %archivo%"
set gitmensaje= %gitcommit% %mensaje%
%ubicacion%
%eliminar%
%gitmensaje%
%gitpush%
pause
cls
set /p algomas= Desea hacer otra cosa?
goto %algomas%
