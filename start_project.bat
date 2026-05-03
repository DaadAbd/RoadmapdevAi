@echo off
echo Starting Final Project...

:: تحديد المسار الرئيسي للمشروع
set BASE_DIR=C:\Users\Admin\Desktop\finalProject
:: 1. فتح المشروع في Visual Studio Code
echo Opening VS Code...
cd /d "%BASE_DIR%"
start code .

:: 2. تشغيل الباك إند (Django) في نافذة جديدة
echo Starting Backend (Django)...
cd /d "%BASE_DIR%\backend"
:: يقوم هذا الأمر بفتح CMD جديد، تفعيل البيئة الوهمية، ثم تشغيل السيرفر
start cmd /k "venv\Scripts\activate && python manage.py runserver"

:: 3. تشغيل الفرونت إند (React) في نافذة جديدة
echo Starting Frontend (React)...
cd /d "%BASE_DIR%\view"
:: يقوم هذا الأمر بفتح CMD جديد وتشغيل الرياكت
start cmd /k "npm start"

echo All services are starting...