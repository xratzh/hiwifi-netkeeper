#! /bin/sh
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

echo "选择你的省份.，列表如下"
echo "1: chongqing0094_sxplugin.so"
echo "2: chongqing_sxplugin.so"
echo "3: gansu_telecom_sxplugin.so"
echo "4: hainan_sxplugin.so"
echo "5: hebei_sxplugin.so"
echo "6: hubei_sxplugin.so"
echo "7: qinghai_sxplugin.so"
echo "8: shandongmobile_sxplugin.so"
echo "9: shanxi_yixun_sxplugin.so"
echo "10: xinjiang_sxplugin.so"
echo "11: zhejiang_qiye_sxplugin.so"
echo "12: zhejiang_xiaoyuan_sxplugin.so"  
echo "请在下方空白处输入编号数字并回车以确认："
echo "或者ctrl+c退出"
read so
if [ $so = 1 ]
then
    curl -kso /usr/lib/pppd/chongqing0094_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/arm2.4.7/chongqing0094_sxplugin.so
    chmod +x /usr/lib/pppd/chongqing0094_sxplugin.so
    echo "plugin chongqing0094_sxplugin.so" >> /tmp/ppp/options.wan0
elif [ $so = 2 ]
then
    curl -kso /usr/lib/pppd/chongqing_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/arm2.4.7/chongqing_sxplugin.so
    chmod +x /usr/lib/pppd/chongqing_sxplugin.so
    echo "plugin chongqing_sxplugin.so" >> /tmp/ppp/options.wan0
elif [ $so = 3 ]
then
    curl -kso /usr/lib/pppd/gansu_telecom_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/arm2.4.7/gansu_telecom_sxplugin.so
    chmod +x /usr/lib/pppd/gansu_telecom_sxplugin.so
    echo "plugin gansu_telecom_sxplugin.so" >> /tmp/ppp/options.wan0
elif [ $so = 4 ]
then
    curl -kso /usr/lib/pppd/hainan_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/arm2.4.7/hainan_sxplugin.so
    chmod +x /usr/lib/pppd/hainan_sxplugin.so
    echo "plugin hainan_sxplugin.so" >> /tmp/ppp/options.wan0
elif [ $so = 5 ]
then
    curl -kso /usr/lib/pppd/hebei_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/arm2.4.7/hebei_sxplugin.so
    chmod +x /usr/lib/pppd/hebei_sxplugin.so
    echo "plugin hebei_sxplugin.so" >> /tmp/ppp/options.wan0
elif [ $so = 6 ]
then
    curl -kso /usr/lib/pppd/hubei_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/arm2.4.7/hubei_sxplugin.so
    chmod +x /usr/lib/pppd/hubei_sxplugin.so
    echo "plugin hubei_sxplugin.so" >> /tmp/ppp/options.wan0
elif [ $so = 7 ]
then
    curl -kso /usr/lib/pppd/qinghai_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/arm2.4.7/qinghai_sxplugin.so
    chmod +x /usr/lib/pppd/qinghai_sxplugin.so
    echo "plugin qinghai_sxplugin.so" >> /tmp/ppp/options.wan0
elif [ $so = 8 ]
then curl -kso /usr/lib/pppd/shandongmobile_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/arm2.4.7/shandongmobile_sxplugin.so
     chmod +x /usr/lib/pppd/shandongmobile_sxplugin.so
     echo "plugin shandongmobile_sxplugin.so" >> /tmp/ppp/options.wan0
elif [ $so = 9 ]
then
    curl -kso /usr/lib/pppd/shanxi_yixun_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/arm2.4.7/shanxi_yixun_sxplugin.so
    chmod +x /usr/lib/pppd/shanxi_yixun_sxplugin.so
    echo "plugin shanxi_yixun_sxplugin.so" >> /tmp/ppp/options.wan0
elif [ $so = 10 ]
then
    curl -kso /usr/lib/pppd/xinjiang_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/arm2.4.7/xinjiang_sxplugin.so
    chmod +x /usr/lib/pppd/xinjiang_sxplugin.so
    echo "plugin xinjiang_sxplugin.so" >> /tmp/ppp/options.wan0
elif [ $so = 11 ]
then
    curl -kso /usr/lib/pppd/zhejiang_qiye_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/arm2.4.7/zhejiang_qiye_sxplugin.so
    chmod +x /usr/lib/pppd/zhejiang_qiye_sxplugin.so
    echo "plugin zhejiang_qiye_sxplugin.so" >> /tmp/ppp/options.wan0
elif [ $so = 12 ]
then
    curl -kso /usr/lib/pppd/zhejiang_xiaoyuan_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/arm2.4.7/zhejiang_xiaoyuan_sxplugin.so
    chmod +x /usr/lib/pppd/zhejiang_xiaoyuan_sxplugin.so
    echo "plugin zhejiang_xiaoyuan_sxplugin.so" >> /tmp/ppp/options.wan0
else
    echo "错误！请输入正确编号再重试"
    sh install.sh
    exit 0
fi	  
echo "接下来核对你的路由器时间，ntp、手动或者同步浏览器时间。输入帐号和密码再试试。"
