@echo off
setlocal EnableDelayedExpansion

start .\GMLive\gmlive-server.exe

REM Define the directories
set "SPRITES_DIR=..\sprites"
set "ROOMS_DIR=..\rooms"
set "OUTPUT_FILE=..\scripts\scr_live_set_auto\scr_live_set_auto.gml"

:wait_input
    REM Wait for user input
    pause

    REM Create or clear the output file
    echo function scr_live_set_auto(){ > "%OUTPUT_FILE%"

    REM Loop through each subdirectory in the sprites directory
    for /d %%A in ("%SPRITES_DIR%\*") do (
        REM Extract the directory name
        set "DIR_NAME=%%~nxA"

        REM Write to the output file
        echo 	sprite_set_live(!DIR_NAME!,1^); >> "%OUTPUT_FILE%"
    )

    REM Loop through each subdirectory in the sprites directory
    for /d %%A in ("%ROOMS_DIR%\*") do (
        REM Extract the directory name
        set "DIR_NAME=%%~nxA"

        REM Write to the output file
        echo 	room_set_live(!DIR_NAME!,1^); >> "%OUTPUT_FILE%"
    )

    REM Close the function in the output file
    echo } >> "%OUTPUT_FILE%"

    REM Go back to waiting for input
    goto wait_input
