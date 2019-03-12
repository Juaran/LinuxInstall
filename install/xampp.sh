#!/bin/sh

# 下载xampp包
wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/7.3.1/xampp-linux-x64-7.3.1-0-installer.run

# 执行安装
chmod +x xampp-linux-x64-7.3.1-0-installer.run
./xampp-linux-x64-7.3.1-0-installer.run

# 添加到环境变量
cp /opt/lampp/xampp /opt/lampp/bin
echo "export PATH=$PATH:/opt/lampp/bin" >> /etc/profile
source /etc/profile

# 删除安装包
rm -rf xampp-linux-x64-7.3.1-0-installer.run 

# 启动服务
xampp start
