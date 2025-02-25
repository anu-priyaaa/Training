echo "Enter the no:"
read num

if [ $num -gt 10 ]; then
    echo "The no is greater than 10"
else
    echo "The no is 20 or less"
fi

echo "Enter ur age"
read age
echo "Are you indian"
read citizen
if [ $age -ge 18 ] && [ $citizen == "yes" ] || [ $citizen == "YES" ]; then
    echo "You are eligible for vote"
else 
    echo "You are not eleigible for vote"
fi