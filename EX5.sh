#desktop caluclator
echo "enter two numbers"
read a b
echo "a-addition \n s-subtraction \n m-multiplication \n d-divsion \n r-remainder\n "
echo "enter op:"
read op
case $op in
        a) res=`expr $a + $b`
        echo " result of addition is $res "
         ;;
        s) res=`expr $a - $b`
        echo " result of subtraction is $res "
        ;;
        m)res=`expr $a \* $b`
        echo " result of multiplcation is $res "
        ;;
        d)res=`expr $a / $b`
        echo " result of division is $res "
        ;;
        r)res=`expr $a % $b`
        echo " remainder is $res"
        ;;
        *)
        echo "wrong option"
        ;;
esac

