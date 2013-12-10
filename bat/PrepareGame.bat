@echo off

set FLASH_DEVELOP_DIR=C:\Program Files (x86)\FlashDevelop\
set PROJECT_FILE="base-game-sample.as3proj"
set FLASH_SDK_VERSION="4.6.0; 3.5"
::set TRACE_OPTION=-notrace
set TRACE_OPTION=

call "%FLASH_DEVELOP_DIR%Tools\fdbuild\fdbuild.exe" %PROJECT_FILE% -version %FLASH_SDK_VERSION% -compiler "%FLASH_DEVELOP_DIR%Tools\flexsdk" %TRACE_OPTION% -library "%FLASH_DEVELOP_DIR%Library"

::xcopy bin\game.swf assets\game /E /Y /D

