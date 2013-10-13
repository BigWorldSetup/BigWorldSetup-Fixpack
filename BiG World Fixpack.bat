:: BiG World Fixpack Installer
:: Process a directory tree and call different commands when some
:: of the following files/directories exist in the mod directory:
::       *.patch         =>  patch with these files
::       _delete         =>  delete all files listed in this file
::                           (paths are relative to the mod directory)
::       _rename         =>  like _delete but a line in this file should
::                           have the format:
::                           path\original-filename\tnew-filename
::                           (\t means insert a literal TAB here)
::       _copy           =>  copy the tree to target directory
::
::       _depends        =>  process subdir if the mod is present
::       _depends_not    =>  process subdir if the mod is not present
::       _optional       =>  process subdir if it contains a description
::                           and the user has chosen to install it
::
:: If the target directory of a _copy is not the same as the mod name
:: use a _target file in the mod directory to specify the target directory.
:: (Not necessary for patches, since the information is in the patch itself.)
::
:: Also performs a creature fix if WeiDU.exe is in the game directory and
:: adds missing setup-xxx.exe files (if ADD_MISSING_SETUP is true).
::
:: arguments (all internal, do not use from command line):
::  %1 - directory you want to process
::  %2 - further instructions on how to handle the subdirectories (NOT / OPT)
::
:: error codes
::   1  =>  missing main directory
::

@echo off

:: variable definitions
SET MAIN_DIR=BiG World Fixpack
SET UTILS=%MAIN_DIR%\_utils
SET MESSAGES=%MAIN_DIR%\_messages

SET INTERACTIVE=true
SET ADD_MISSING_SETUP=true

SET COPY_DIR=_copy
SET DEPENDS_DIR=_depends
SET DEPENDS_NOT_DIR=_depends_not
SET OPTIONAL_DIR=_optional

SET DESC_FILE=_description
SET REN_FILE=_rename
SET DEL_FILE=_delete
SET TARGET_FILE=_target
SET PATCH_FILES=*.patch
SET TP2_FILES=*.tp2

SET COPY_CMD=xcopy /Y /E /R /V
SET PATCH_CMD="%UTILS%\patch" -p0 --no-backup-if-mismatch --ignore-whitespace
SET TEE_CMD="%UTILS%\tee" -a "BiG World Debug.txt"

SET INSTALL_MARKER=BWP_Fixpack.installed
SET WEIDU=WeiDU.exe


:: set absolute path for install marker file
SET INSTALL_MARKER=%~dp0\%INSTALL_MARKER%

:: fixes the variable expansion in for loops (using !VAR!)
:: (but introduces a bug related to filenames with exclamation marks)
SETLOCAL ENABLEDELAYEDEXPANSION

:: counter for detecting the last run through this batch
SET /A COUNTER=0

:checks
IF NOT EXIST "%MAIN_DIR%" (
    echo.
    echo Can't locate the directory "%MAIN_DIR%".
    echo Make sure it resides in the current directory!
    echo.
    echo Das Verzeichnis "%MAIN_DIR%" konnnte nicht gefunden werden.
    echo Es ist fr die Installation zwingend erforderlich
    echo und muss im aktuellen Verzeichnis vorhanden sein.
    echo.
    echo Ne trouve pas le repertoire "%MAIN_DIR%".
    echo Assurez-vous qu'il se trouve dans le repertoire actuel !
    echo.
    echo No se puede localizar el directorio "%MAIN_DIR%".
    echo Es necesario para la instalaci¢n y debe estar en el
    echo directorio actual.
    echo.
    pause
    exit /B 1
)

IF NOT EXIST "%WEIDU%" (
    call :show_message "%MESSAGES%\missing_weidu.txt"
)

IF NOT EXIST "%INSTALL_MARKER%" (
    type nul >"%INSTALL_MARKER%"
)

:start
cls
type "%MESSAGES%\header.txt" | %TEE_CMD%
call :show_message "%MESSAGES%\start.txt"

:process
SET /A COUNTER=%COUNTER% + 1

:: set current directory for recursive processing
:: also try to workaround the ampersand in dirname problem
IF "x%~1" == "x" (SET CUR_DIR="%MAIN_DIR%") ELSE SET CUR_DIR="%~1"
SET CUR_DIR=%CUR_DIR:&=^&%
SET CUR_DIR=%CUR_DIR:"=%

:: walk the tree
FOR /D %%d IN ("%CUR_DIR%\*") DO (
    :: check if the mod does (not) exist in the game dir ^
    :: also search for modname.tp2 and setup-modname.tp2 ^
    :: (we need a helper variable because it's not possible combine IFs with OR)
    SET DO_STUFF=false
    IF "x%~2" == "x" (
        IF EXIST "%%~nd" SET DO_STUFF=true
        IF EXIST "%%~nd.tp2" SET DO_STUFF=true
        IF EXIST "setup-%%~nd.tp2" SET DO_STUFF=true
    ) ELSE (
        IF "%~2" == "NOT" (
            IF NOT EXIST "%%~nd" IF NOT EXIST "%%~nd.tp2" IF NOT EXIST "setup-%%~nd.tp2" SET DO_STUFF=true
        ) ELSE (
            IF "%~2" == "OPT" IF "%~3" == "%%~nd" SET DO_STUFF=true
        )
    )

    IF "%CUR_DIR%" == "%MAIN_DIR%" (
        :: also check if we already patched this mod ^
        :: errorlevel is somehow bugged, so we need a workaround (for loop)
        FOR /F %%x IN ('findstr /B /E /I  "%%~nd" "%INSTALL_MARKER%"') DO (
            echo.
            echo skipping "%%~nd" [already fixed]| %TEE_CMD%
            SET DO_STUFF=false
        )
    )

    IF "!DO_STUFF!" == "true" (
        IF "%CUR_DIR%" == "%MAIN_DIR%" (
            echo.
            echo processing fixes for "%%~nd"| %TEE_CMD%
            echo.
            SET TARGET_DIR=%%~nd
            :: look for TARGET_FILE which can override target directory
            IF EXIST "%%d\%TARGET_FILE%" (
                FOR /F "usebackq delims=" %%x IN ("%%d\%TARGET_FILE%") DO SET TARGET_DIR=%%x
            )
        )

        FOR %%p IN ("%%d\%PATCH_FILES%") DO (
            :: ugly workaround for MS bug related to delayed expansion
            SETLOCAL DISABLEDELAYEDEXPANSION
            SET p=%%p
            SETLOCAL ENABLEDELAYEDEXPANSION

            %PATCH_CMD% < "!p!" | %TEE_CMD%

            ENDLOCAL
            ENDLOCAL
        )

        :: special handling for tp2s (do not use this!)
        FOR %%t IN ("%%d\%TP2_FILES%") DO (
            copy /Y "%%t" "." | %TEE_CMD%
        )

        IF EXIST "%%d\%DEL_FILE%" (
            echo.
            echo deleting files ...| %TEE_CMD%
            FOR /F "usebackq delims=" %%x IN ("%%d\%DEL_FILE%") DO (
                echo !TARGET_DIR!\%%x| %TEE_CMD%
                del /F "!TARGET_DIR!\%%x"
            )
        )

        IF EXIST "%%d\%REN_FILE%" (
            echo.
            echo renaming files ...| %TEE_CMD%
            FOR /F "usebackq delims=" %%x IN ("%%d\%REN_FILE%") DO (
                FOR /F "tokens=1,2 delims=	" %%y IN ("%%x") DO (
                    echo !TARGET_DIR!\%%y	%%z| %TEE_CMD%
                    ren "!TARGET_DIR!\%%y" "%%z"
                )
            )
        )

        IF EXIST "%%d\%COPY_DIR%" IF EXIST "!TARGET_DIR!" (
            echo.
            echo copying files ...| %TEE_CMD%
            %COPY_CMD% "%%d\%COPY_DIR%" "!TARGET_DIR!" | %TEE_CMD%
        )

        IF EXIST "%%d\%DEPENDS_DIR%" call :process "%%d\%DEPENDS_DIR%"
        IF EXIST "%%d\%DEPENDS_NOT_DIR%" call :process "%%d\%DEPENDS_NOT_DIR%" NOT
        IF EXIST "%%d\%OPTIONAL_DIR%" IF "%INTERACTIVE%" == "true" (
            FOR /D %%o IN ("%%d\%OPTIONAL_DIR%\*.*") DO (
                IF EXIST "%%o\%DESC_FILE%" (
                    echo.
                    type "%%o\%DESC_FILE%"
                    :query_optional
                    type "%MESSAGES%\opt_install.txt"
                    SET /P ACTION=
                    IF /I "!ACTION!" NEQ "I" IF /I "!ACTION!" NEQ "N" goto query_optional
                    IF /I "!ACTION!" EQU "I" (
                        echo.
                        echo processing optional component "%%~no"| %TEE_CMD%
                        call :process "%%d\%OPTIONAL_DIR%" OPT "%%~no"
                    )
                )
            )
        )
        :: we are done for this mod
        IF "%CUR_DIR%" == "%MAIN_DIR%" (
            echo %%~nd>>"%INSTALL_MARKER%"
        )
    )
)

SET /A COUNTER=%COUNTER% - 1
IF NOT %COUNTER% == 0 goto :EOF

:add_missing_setup_files
IF EXIST "%WEIDU%" IF "%ADD_MISSING_SETUP%" == "true" (
    FOR %%t IN ("*.tp2") DO (
        SET FOUND=false
        SET BASENAME=%%~nt
        IF EXIST "!BASENAME!.exe" SET FOUND=true
        IF EXIST "setup-!BASENAME!.exe" SET FOUND=true

        IF NOT "!FOUND!" == "true" (
            IF /I "!BASENAME:~0,6!" EQU "setup-" (
                copy /Y "WeiDU.exe" "!BASENAME!.exe" >nul
            ) ELSE (
                copy /Y "WeiDU.exe" "setup-!BASENAME!.exe" >nul
            )
        )
    )
)


:cre_check
IF EXIST "%WEIDU%" (
    call :show_message "%MESSAGES%\cre_check.txt"
    "%WEIDU%" --noautoupdate --force-install 0 --nogame --log nul "%UTILS%\cre_check.tp2" --args "%UTILS%" | %TEE_CMD%
)

:finished
call :show_message "%MESSAGES%\end.txt"

exit /B 0

:show_message
IF "%INTERACTIVE%" == "true" (
    echo.
    type %1
    echo.
    IF NOT EXIST "BiG World Installpack\Big World Smoothpack" pause
)
