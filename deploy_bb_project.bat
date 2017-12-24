@echo off

rem Packaging project Gencore_mobile_bb

set gencore_mobile_home=D:\WORK\workspace\Gencore_mobile_bb
set codename=%gencore_mobile_home%\deliverables\Standard\6.0.0\Gencore_mobile_bb
set sourceroot=%gencore_mobile_home%\res;%gencore_mobile_home%\src\main\java
set import_api=D:\WORK\eclipse\plugins\net.rim.ejde.componentpack6.0.0_6.0.0.29\components\lib\net_rim_api.jar
set classpath=%gencore_mobile_home%\bin

call rapc -quiet codename=%codename% %codename%.rapc  -sourceroot=%sourceroot% -import=%import_api% %classpath%

call javaloader -u load  %gencore_mobile_home%\deliverables\Standard\6.0.0\Gencore_mobile_bb.cod

pause
