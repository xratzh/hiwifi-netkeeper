#! /bin/sh
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

cd /usr/lib/pppd/2.4.5/
echo "输入你的省份.so名称，举例：chongqing_sxplugin.so,列表如下"
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
echo "请在下方空白处输入并回车以确认："
read -p "" so
echo "You will install ${so}"
curl -kso ${so} https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel2.4.5/${so}
chmod +x /usr/lib/pppd/2.4.5/${so}
sed -i "15a \        \option pppd_options 'plugin ${so}'" /etc/config/network
echo "接下来核对你的路由器时间，ntp、手动或者同步浏览器时间。输入帐号和密码再试试。"
