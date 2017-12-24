@echo off

rem ---------------------------------------------------------------------------
rem Start script for the CATALINA Server
rem
rem $Id: startup.bat 467182 2006-10-23 23:47:06Z markt $
rem ---------------------------------------------------------------------------

rem call ant -buildfile D:\WORK\workspace\Gencore_portal\build.xml -Dbasedir=D:\WORK\workspace\Gencore_portal clean-cache

rem Build all flex library

call ant -buildfile D:\WORK\workspace\LucciMVC\build.xml -Dbasedir=D:\WORK\workspace\LucciMVC install 
call ant -buildfile D:\WORK\workspace\LucciValidator\build.xml -Dbasedir=D:\WORK\workspace\LucciValidator install
call ant -buildfile D:\WORK\workspace\Gencore_ui_commons\build.xml -Dbasedir=D:\WORK\workspace\Gencore_ui_commons install
call ant -buildfile D:\WORK\workspace\Gencore_assets\build.xml -Dbasedir=D:\WORK\workspace\Gencore_assets install 

rem Build all flex modules

call ant -buildfile D:\WORK\workspace\Gencore_ui_tracker\build.xml -Dbasedir=D:\WORK\workspace\Gencore_ui_tracker install
call ant -buildfile D:\WORK\workspace\Gencore_ui_admin\build.xml -Dbasedir=D:\WORK\workspace\Gencore_ui_admin install
call ant -buildfile D:\WORK\workspace\Gencore_ui_login\build.xml -Dbasedir=D:\WORK\workspace\Gencore_ui_login install
call ant -buildfile D:\WORK\workspace\Gencore_ui_home\build.xml -Dbasedir=D:\WORK\workspace\Gencore_ui_home install 

rem Build all flex projects

call ant -buildfile D:\WORK\workspace\Gencore_ui_portal\build.xml -Dbasedir=D:\WORK\workspace\Gencore_ui_portal install

rem Build all java project

call ant -buildfile D:\WORK\workspace\Gencore_backend_service\build.xml -Dbasedir=D:\WORK\workspace\Gencore_backend_service install 

rem Build all webapps

call ant -buildfile D:\WORK\workspace\Gencore_portal\build.xml -Dbasedir=D:\WORK\workspace\Gencore_portal install_prod

rem deploy version

rem call ant -buildfile D:\WORK\workspace\Gencore_portal\build.xml -Dbasedir=D:\WORK\workspace\Gencore_portal undeploy
call ant -buildfile D:\WORK\workspace\Gencore_portal\build.xml -Dbasedir=D:\WORK\workspace\Gencore_portal deploy_war

pause


