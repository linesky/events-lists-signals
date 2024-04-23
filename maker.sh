printf "\x1bc\x1b[43;37m"
roots=$(pwd)/roots
tmps=/tmp/lists.txt
tmps2=/tmp/lists2.txt
gcc exits.c  -o exits
gcc hello.c  -o hello 
gcc signal.c  -o signal
gcc task.c -o task
mkdir -p $roots
mkdir -p $roots/usr
mkdir -p $roots/usr/bin
mkdir -p $roots/bin
mkdir -p $roots/tmp
mkdir -p $roots/lib
mkdir -p $roots/dev
mkdir -p $roots/boot
mkdir -p $roots/lib/i386-linux-gnu
cp  ./exits $roots/usr/bin
cp  ./exits $roots/bin
cp  ./hello $roots/usr/bin
cp  ./hello $roots/bin
cp  ./signal $roots/usr/bin
cp  ./signal $roots/bin
cp  ./task $roots/usr/bin
cp  ./task $roots/bin
cp  /usr/bin/bash $roots/usr/bin
cp  /usr/bin/bash $roots/bin
cp  /usr/bin/sh $roots/usr/bin
cp  /usr/bin/sh $roots/bin
cp  /usr/bin/date $roots/usr/bin
cp  /usr/bin/date $roots/bin
cp  /usr/bin/grep $roots/usr/bin
cp  /usr/bin/grep $roots/usr/bin
cp  /usr/bin/grep $roots/bin
cp  /usr/bin/sed $roots/usr/bin
cp  /usr/bin/sed $roots/bin
cp  /usr/bin/ls $roots/usr/bin
cp  /usr/bin/ls $roots/bin
cp  /usr/bin/mkdir $roots/usr/bin
cp  /usr/bin/mkdir $roots/bin
cp  /usr/bin/printf $roots/usr/bin
cp  /usr/bin/printf $roots/bin
cp  /usr/bin/echo $roots/usr/bin
cp  /usr/bin/echo $roots/bin
cp  /usr/bin/cat $roots/usr/bin
cp  /usr/bin/cat $roots/bin
cp  /usr/bin/awk $roots/usr/bin
cp  /usr/bin/awk $roots/bin
cp  /usr/bin/busybox $roots/usr/bin
cp  /usr/bin/busybox $roots/bin
cp  /usr/bin/chmod $roots/usr/bin
cp  /usr/bin/chmod $roots/bin
cp  /usr/bin/clear $roots/usr/bin
cp  /usr/bin/clear $roots/bin
cp  /usr/bin/cp $roots/usr/bin
cp  /usr/bin/cp $roots/bin
cp  /usr/bin/dd $roots/usr/bin
cp  /usr/bin/dd $roots/bin
cp  /usr/bin/df $roots/usr/bin
cp  /usr/bin/df $roots/bin
cp  /usr/bin/env $roots/usr/bin
cp  /usr/bin/env $roots/bin
cp  /usr/bin/expr $roots/usr/bin
cp  /usr/bin/expr $roots/bin
cp  /usr/bin/true $roots/usr/bin
cp  /usr/bin/true $roots/bin
cp  /usr/bin/file $roots/usr/bin
cp  /usr/bin/file $roots/bin
cp  /usr/bin/find $roots/usr/bin
cp  /usr/bin/find $roots/bin
cp  /usr/bin/kill $roots/usr/bin
cp  /usr/bin/kill $roots/bin
cp  /usr/bin/killall $roots/usr/bin
cp  /usr/bin/killall $roots/bin
cp  /usr/bin/ldd $roots/usr/bin
cp  /usr/bin/ldd $roots/bin
cp  /usr/bin/lscpu $roots/usr/bin
cp  /usr/bin/lscpu $roots/bin
cp  /usr/bin/lspci $roots/usr/bin
cp  /usr/bin/lspci $roots/bin
cp  /usr/bin/lsmem $roots/usr/bin
cp  /usr/bin/lsmem $roots/bin
cp  /usr/bin/lsusb $roots/usr/bin
cp  /usr/bin/lsusb $roots/bin
cp  /usr/bin/mkfifo $roots/usr/bin
cp  /usr/bin/mkfifo $roots/bin
cp  /usr/bin/more $roots/usr/bin
cp  /usr/bin/more $roots/bin
cp  /usr/bin/mount $roots/usr/bin
cp  /usr/bin/mount $roots/bin
cp  /usr/bin/netcat $roots/usr/bin
cp  /usr/bin/netcap $roots/bin
cp  /usr/bin/pico $roots/usr/bin
cp  /usr/bin/pico $roots/bin
cp  /usr/bin/ping $roots/usr/bin
cp  /usr/bin/ping $roots/bin
cp  /usr/bin/print $roots/usr/bin
cp  /usr/bin/print $roots/bin
cp  /usr/bin/rm $roots/usr/bin
cp  /usr/bin/rm $roots/bin
cp  /usr/bin/rmdir $roots/usr/bin
cp  /usr/bin/rmdir $roots/bin
cp  /usr/bin/stty $roots/usr/bin
cp  /usr/bin/stty $roots/bin
cp  /usr/bin/su $roots/usr/bin
cp  /usr/bin/su $roots/bin
cp  /usr/bin/sudo $roots/usr/bin
cp  /usr/bin/sudo $roots/bin
cp  /usr/bin/tail $roots/usr/bin
cp  /usr/bin/tail $roots/bin
cp  /usr/bin/telnet $roots/usr/bin
cp  /usr/bin/telnet $roots/bin
cp  /usr/bin/timeout $roots/usr/bin
cp  /usr/bin/timeout $roots/bin
cp  /usr/bin/tr $roots/usr/bin
cp  /usr/bin/tr $roots/bin
cp  /usr/bin/true $roots/usr/bin
cp  /usr/bin/true $roots/bin
cp  /usr/bin/tty $roots/usr/bin
cp  /usr/bin/tty $roots/bin
cp  /usr/bin/unzip $roots/usr/bin
cp  /usr/bin/unzip $roots/bin
cp  /usr/bin/users $roots/usr/bin
cp  /usr/bin/users $roots/bin
cp  /usr/bin/vi $roots/usr/bin
cp  /usr/bin/vi $roots/bin
cp  /usr/bin/wget $roots/usr/bin
cp  /usr/bin/wget $roots/bin
cp  /usr/bin/curl $roots/usr/bin
cp  /usr/bin/curl $roots/bin
printf "" > $roots/dev/null
printf "" > $roots/dev/stdio
printf "" > $roots/dev/stdout
printf "" > $roots/dev/stdin
chmod 777 $roots/bin/*
chmod 777 $roots/usr/bin/*
printf "" > $tmps
list1=$(ls $roots/usr/bin/*)
for l1 in $list1
do
ldd "$l1" | grep  '/lib/' >> $tmps
done
awk '{for(i=1;i<=NF;i++) if($i ~ /\/lib\//) print $i}' $tmps > $tmps2
while IFS= read -r l1
do

rt="$roots$l1"
cp "$l1" "$rt" 
done < "$tmps2"




