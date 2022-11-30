while [ 1 ]
do
echo " 1.os \n 2.shell info \n 3. mouse settings \n 4. cpu \n 5. memory \n 6. hard disk \n 7.file "
echo "enter option"
read op
case $op in
1) echo "os version, release number, kernel"
echo " os: "
if  [  -f  /etc/os-release ]
then
cat /etc/os-release
fi
;;
2)echo " all available shells "
if  [  -f  /etc/shells ]
then
cat /etc/shells
fi
;;
3)echo " mouse settings "
xinput --list 10
;;
4) echo " cpu information "
if  [  -f  /proc/cpuinfo ]
then
cat /proc/cpuinfo
fi
;;
5)echo "memory information"
if  [ -f  /proc/meminfo ]
then
cat /proc/meminfo
fi
;;
6)echo "model:`cat /proc/ide/hda/model`"
echo "driver:` cat /proc/ide/hda/driver`"
echo "cache:`cat /proc/ide/hda/cache`"
;;
7)echo "file system"
cat /proc/mounts
if which dialog > /dev/null
then
dialog --backtitle "Linux Software Daignostics Shell Script ver.1.0"  --title"press up/down keys to move" --textbox /tmt/info.tmt.01.$$$ 21 70
else
cat /tmp/info.tmp.01.$$$ |more
fi
rm -f /tmp/info.tmp.01.$$$
;;
*)echo "enter valid option:"
exit;;
esac
done
