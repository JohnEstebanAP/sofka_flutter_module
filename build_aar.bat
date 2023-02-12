@echo off

setlocal

rem Define the path to your Flutter installation
set FLUTTER_HOME=C:\Users\john.alvarez\StudioProjects\flutter
rem Define the path to your Flutter project
set PROJECT_HOME=C:\Users\john.alvarez\AndroidStudioProjects\sofka_flutter_module

rem Define the output directory for the AAR file
set OUTPUT_DIR=C:\Users\john.alvarez\AndroidStudioProjects\AppNativa\flutter-module

rem Navigate to your Flutter project
cd /d %PROJECT_HOME%

rem Build the AAR file
%FLUTTER_HOME%\bin\flutter.bat build aar --output-dir %OUTPUT_DIR%

echo Build completed successfully! The AAR file is located at %OUTPUT_DIR%

endlocal

