@echo off
echo === Counting files on C:\ drive ===

REM Initialize counter
set /a count=0

REM Loop through all files on C:\ recursively
for /r C:\ %%f in (*) do (
    set /a count+=1
)

echo Total number of files on C:\ = %count%

echo === Script Finished ===
pause

