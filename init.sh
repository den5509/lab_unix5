cd /work

make clean && make install

[ "$?" != "0" ] && echo "Error 1" && exit 1

echo Start
bin/lab5

[ "$?" = "0" ] \
    && echo "Profit!" && exit 0\
|| echo "Error 2" && exit 1

cd /work

