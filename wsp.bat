@echo off

IF %1==add powershell %~dp0wsp-ps1\add.ps1 %2

IF %1==install powershell %~dp0wsp-ps1\install.ps1 %2

IF %1==update powershell %~dp0wsp-ps1\update.ps1 %2