#!/bin/sh

# 安装依赖
yum -y install zlib zlib-devel
yum -y install bzip2 bzip2-devel
yum -y install ncurses ncurses-devel
yum -y install readline readline-devel
yum -y install openssl openssl-devel
yum -y install openssl-static
yum -y install xz lzma xz-devel
yum -y install sqlite sqlite-devel
yum -y install gdbm gdbm-devel
yum -y install tk tk-devel

# 下载Python3.6.5
wget https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tar.xz 

# 解压
tar Jxvf Python-3.6.5.tar.xz

# 进入目录
cd Python-3.6.5

# 编译
./configure --prefix=/usr/local/python3

# 安装
make && make install

# 清除目录、安装包
rm -rf Python-3.6.5
rm -rf Python-3.6.5.tar.xz

# 做软链
ln -s /usr/local/python3/bin/python3 /usr/local/bin/python3
ln -s /usr/local/python3/bin/pip3 /usr/local/bin/pip3

# 升级pip3
pip3 install --upgrade pip

# 安装常用
pip3 install requests
pip3 install pymysql
pip3 install lxml
