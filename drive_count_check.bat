@echo off
echo === Checking available drives ===

REM Initialize counter
set /a count=0

REM Loop through all drives using WMIC
for /f "skip=1 tokens=1" %%d in ('wmic logicaldisk get name') do (
    if not "%%d"=="" (
        echo Found drive: %%d
        set /a count+=1
    )
)

echo === Total number of drives: %count% ===
pause

