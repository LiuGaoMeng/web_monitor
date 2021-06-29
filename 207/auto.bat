set data=curl http://127.0.0.1:8094/moni/getServiceMess
if %data% EQU null
(echo %data%)

pause