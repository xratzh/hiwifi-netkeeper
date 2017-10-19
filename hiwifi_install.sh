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
echo "下载tar集合"
curl -Lk https://github.com/xratzh/hiwifi-netkeeper/releases/download/v1.0/mipsel2.4.5.tar -o mipsel2.4.5.tar
tar -xvf mipsel2.4.5.tar
read so
if [ $so = 1 ]
then
    mv mipsel2.4.5/chongqing0094_sxplugin.so /usr/lib/pppd/2.4.5/chongqing0094_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/chongqing0094_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin chongqing0094_sxplugin.so'" /etc/config/network
elif [ $so = 2 ]
then
    mv mipsel2.4.5/chongqing_sxplugin.so  /usr/lib/pppd/2.4.5/chongqing_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/chongqing_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin chongqing_sxplugin.so'" /etc/config/network
elif [ $so = 3 ]
then
    mv mipsel2.4.5/gansu_telecom_sxplugin.so /usr/lib/pppd/2.4.5/gansu_telecom_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/gansu_telecom_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin gansu_telecom_sxplugin.so'" /etc/config/network
elif [ $so = 4 ]
then
    mv mipsel2.4.5/hainan_sxplugin.so /usr/lib/pppd/2.4.5/hainan_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/hainan_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin hainan_sxplugin.so'" /etc/config/network
elif [ $so = 5 ]
then
    mv mipsel2.4.5/hebei_sxplugin.so /usr/lib/pppd/2.4.5/hebei_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/hebei_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin hebei_sxplugin.so'" /etc/config/network
elif [ $so = 6 ]
then
    mv mipsel2.4.5/hubei_sxplugin.so /usr/lib/pppd/2.4.5/hubei_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/hubei_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin hubei_sxplugin.so'" /etc/config/network
elif [ $so = 7 ]
then
    mv mipsel2.4.5/qinghai_sxplugin.so /usr/lib/pppd/2.4.5/qinghai_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/qinghai_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin qinghai_sxplugin.so'" /etc/config/network
elif [ $so = 8 ]
then 
    mv mipsel2.4.5/shandongmobile_sxplugin.so /usr/lib/pppd/2.4.5/shandongmobile_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/shandongmobile_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin shandongmobile_sxplugin.so'" /etc/config/network
elif [ $so = 9 ]
then
    mv mipsel2.4.5/shanxi_yixun_sxplugin.so /usr/lib/pppd/2.4.5/shanxi_yixun_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/shanxi_yixun_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin shanxi_yixun_sxplugin.so'" /etc/config/network
elif [ $so = 10 ]
then
    mv mipsel2.4.5/xinjiang_sxplugin.so /usr/lib/pppd/2.4.5/xinjiang_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/xinjiang_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin xinjiang_sxplugin.so'" /etc/config/network
elif [ $so = 11 ]
then
    mv mipsel2.4.5/zhejiang_qiye_sxplugin.so /usr/lib/pppd/2.4.5/zhejiang_qiye_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/zhejiang_qiye_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin zhejiang_qiye_sxplugin.so'" /etc/config/network
elif [ $so = 12 ]
then
    mv mipsel2.4.5/zhejiang_xiaoyuan_sxplugin.so /usr/lib/pppd/2.4.5/zhejiang_xiaoyuan_sxplugin.so
    chmod +x /usr/lib/pppd/2.4.5/zhejiang_xiaoyuan_sxplugin.so
    sed -i "15a \        \option pppd_options 'plugin zhejiang_xiaoyuan_sxplugin.so'" /etc/config/network
else
    echo "错误！请输入正确编号再重试"
    sh install.sh
    exit 0
fi
echo "清除下载的tar及解压文件多余的省份的so"
rm -rf mipsel2.4.5 && rm mipsel2.4.5.tar
echo "接下来核对你的路由器时间，ntp、手动或者同步浏览器时间。输入帐号和密码再试试。"
