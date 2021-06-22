#bin/#!/bin/bash
sed -i s/demo1/${TOKEN}/g telegram-send.conf
sed -i s/demo2/${CHATID}/g telegram-send.conf
mv telegram-send.conf $HOME/telegram-send.conf
cd $HOME

echo Cloning Sources
git clone https://github.com/ElectroPerf/android_kernel_asus_sdm660-LTO.git -b X00TD-R-WIFI-STABLE Kernel

echo Installing Telegram API
pip3 install telegram-send
mkdir $HOME/.config
mv $HOME/telegram-send.conf $HOME/.config/telegram-send.conf

echo Compiling ElectroPerf Kernel For X00TD
bash $HOME/Kernel/X00TD.sh
