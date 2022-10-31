@echo off
title PARADOX - WEBHOOK SPAMMER
echo.
set /p msg=MESSAGE: 
echo.
set /p webh=WEBHOOK: 
echo.
goto ja

:ja
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"%msg%\"}" %webh%
goto ja