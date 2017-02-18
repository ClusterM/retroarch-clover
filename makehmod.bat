@echo off
set moddir=retroarch.hmod
set modname=retroarch.hmod
set outdir=output
for %%x in (%*) do set outdir=%1

cd %moddir%
if not ERRORLEVEL 0 goto error
tar -czvf %modname% *
if ERRORLEVEL 9009 goto notar
if not ERRORLEVEL 0 goto error
md ..\%outdir%
if not ERRORLEVEL 0 goto error
del /F /S /Q ..\%outdir%
if not ERRORLEVEL 0 goto error
move /Y %modname% ..\%outdir%
if not ERRORLEVEL 0 goto error
echo Done!
goto end

:notar
echo Error %ERRORLEVEL%. Maybe you have not tar?
goto end

:error
echo Error %ERRORLEVEL%
goto end

:end