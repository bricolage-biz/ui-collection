@echo off
chcp 65001
setlocal

@REM Enter folder name
set /p foldername=Enter folder name: 

@REM Create and move into the folder
mkdir "%foldername%"
cd "%foldername%"

@REM Enter project title (for the title tag)
set /p projectname=Enter project name: 

@REM Create index.html
(
echo ^<!DOCTYPE html^>
echo ^<html lang="en"^>
echo ^<head^>
echo   ^<meta charset="UTF-8"^>
echo   ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
echo   ^<title^>%projectname%^</title^>
echo   ^<link rel="stylesheet" href="style.css"^>
echo ^</head^>
echo ^<body^>
echo.
echo ^</body^>
echo ^</html^>
) > index.html

@REM Create style.css
(
echo :root {
echo   /* color variables */
echo   --color-primary: #f06292;
echo   --color-primary-hover: #fce4ec;
echo   --color-primary-dark: #ec407a;
echo   --color-gray100: #f9fbff;
echo   --color-gray150: #f4f6fb;
echo   --color-gray200: #eef1f6;
echo   --color-gray300: #e1e5ee;
echo   --color-gray400: #767b91;
echo   --color-gray500: #4f546c;
echo   --color-gray600: #2a324b;
echo   --color-gray700: #161d34;
echo.
echo   /* border radius */
echo   --radius: 0.2rem;
echo }
echo.
echo *,
echo *::before,
echo *::after {
echo   box-sizing: border-box;
echo   margin: 0;
echo   padding: 0;
echo }
echo.
echo body {
echo   font-family: "Montserrat", sans-serif;
echo }
) > style.css

echo Created index.html and style.css in the folder "%foldername%"!
pause
endlocal
