function send_notify {
  start=$(date +%Y%m%d%H%M%S)
  curl -d "message='$1'&time=$start" http://192.168.31.7:8094/moni/serviceMess
}
count=$(netstat -tunlp |grep -c 8093)
if [ $count != 1 ]
then
$(send_notify "map-demo服务停止")
nohup /newData/test/start.sh > /dev/null &
sleep 5
$(send_notify "map-demo服务已重启")
else
$(send_notify "map-demo服务正常")
fi