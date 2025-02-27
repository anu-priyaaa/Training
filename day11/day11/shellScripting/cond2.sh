echo "Enter a number:"
read num

if [ $num -gt 10 ]; then    #-gt is a comparison operator that stands for “greater than”.
echo "The number is greater than 10"
else
echo "The number is less than or equal to 10"
fi   #fi ends the conditional block.