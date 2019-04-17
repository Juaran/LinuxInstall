#!/bin/bash

# 更新apt-get
echo "Update apt-get..."
sudo apt-get update > /dev/null
echo "[ OK ]"

# 检查python3
which python3 > /dev/null
if [ $? -eq 0 ]
then
    echo "Python3 Exists. [ OK ]"
fi

# 检查pip3
which pip3 > /dev/null
if [ $? -eq 0 ]
then
    echo "Pip Exists. [ OK ]"
else
    echo "Install Pip3..."
    sudo apt-get install python3-pip
    echo "[ OK ]"
fi

# 升级pip
echo "Upgrade Pip3..."
pip3 install --upgrade pip
echo "[ OK ]"

# 检查requests包
pip3 list | grep requests > /dev/null
if [ $? -eq 0 ]
then
    echo "requests Installed. "
else
    echo "Installing requests..."
    pip3 install requests > /dev/null
    echo "[ OK ]"
fi

# 检查Pymysql包
pip3 list | grep PyMySQL > /dev/null
if [ $? -eq 0 ]
then
    echo "PyMySQL Installed. "
else
    echo "Installing PyMySQL..."
    pip3 install pymysql > /dev/null
    echo "[ OK ]"
fi

# 检查multiprocess包
pip3 list | grep multiprocess > /dev/null
if [ $? -eq 0 ]
then
    echo "multiprocess Installed. "
else
    echo "Installing multiprocess..."
    pip3 install multiprocess > /dev/null
    echo "[ OK ]"
fi
