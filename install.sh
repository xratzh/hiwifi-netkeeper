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
read so
if [$so=1]
then
    curl -kso /usr/lib/pppd/2.4.5/chongqing0094_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel2.4.5/chongqing0094_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/chongqing0094_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin chongqing0094_sxplugin.so'" /etc/config/network
elif [$so=2]
then
    curl -kso /usr/lib/pppd/2.4.5/chongqing_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel2.4.5/chongqing_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/chongqing_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin chongqing_sxplugin.so'" /etc/config/network
elif [$so=3]
then
    curl -kso /usr/lib/pppd/2.4.5/gansu_telecom_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel2.4.5/gansu_telecom_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/gansu_telecom_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin gansu_telecom_sxplugin.so'" /etc/config/network
elif [$so=4]
then
    curl -kso /usr/lib/pppd/2.4.5/hainan_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel2.4.5/hainan_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/hainan_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin hainan_sxplugin.so'" /etc/config/network
elif [$so=5]
then
    curl -kso /usr/lib/pppd/2.4.5/hebei_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel2.4.5/hebei_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/hebei_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin hebei_sxplugin.so'" /etc/config/network
elif [$so=6]
then
    curl -kso /usr/lib/pppd/2.4.5/hubei_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel2.4.5/hubei_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/hubei_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin hubei_sxplugin.so'" /etc/config/network
elif [$so=7]
then
    curl -kso /usr/lib/pppd/2.4.5/qinghai_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel2.4.5/qinghai_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/qinghai_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin qinghai_sxplugin.so'" /etc/config/network
elif [$so=8]
then curl -kso /usr/lib/pppd/2.4.5/shandongmobile_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel2.4.5/shandongmobile_sxplugin.so
     chmod +x /usr/lib/pppd/2.4.5/shandongmobile_sxplugin.so
     sed -i "15a \        \option pppd_options 'plugin shandongmobile_sxplugin.so'" /etc/config/network
elif [$so=9]
then
    curl -kso /usr/lib/pppd/2.4.5/shanxi_yixun_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel2.4.5/shanxi_yixun_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/shanxi_yixun_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin shanxi_yixun_sxplugin.so'" /etc/config/network
elif [$so=10]
then
    curl -kso /usr/lib/pppd/2.4.5/xinjiang_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel2.4.5/xinjiang_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/xinjiang_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin xinjiang_sxplugin.so'" /etc/config/network
elif [$so=11]
then
    curl -kso /usr/lib/pppd/2.4.5/zhejiang_qiye_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel2.4.5/zhejiang_qiye_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/zhejiang_qiye_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin zhejiang_qiye_sxplugin.so'" /etc/config/network
elif [$so=12]
then
    curl -kso /usr/lib/pppd/2.4.5/zhejiang_xiaoyuan_sxplugin.so https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel2.4.5/zhejiang_xiaoyuan_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/zhejiang_xiaoyuan_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin zhejiang_xiaoyuan_sxplugin.so'" /etc/config/network
else
    echo "错误！请输入正确编号再重试"
    sh install.sh
    exit 0
fi	  
echo "接下来核对你的路由器时间，ntp、手动或者同步浏览器时间。输入帐号和密码再试试。"
