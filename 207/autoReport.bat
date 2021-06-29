:send_notify
set keyword="监控报警"
curl https://oapi.dingtalk.com/robot/send?access_token=d65f7050f10e324963f6d864400d6c45504b039c0ea554c94493dac8b3a453ec -X POST -H "Content-Type:application/json" -d '{"msgtype": "text","text": {"content":"监控报警"}}'
goto:eof

set data=curl http://127.0.0.1:8094/moni/getServiceMess
if %data% EQU null
echo %data%
(goto :send_notify)
pause