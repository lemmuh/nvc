set -xe

pwd
which nvc
which fstdump

nvc -a $TESTDIR/regress/wave1.vhd -e wave1 -r -w
fstdump wave1.fst > wave1.dump
diff -u wave1.dump $TESTDIR/regress/gold/wave1.dump
