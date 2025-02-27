echo "Enter your age"
read age
echo "Are you indian"
read citizen

if [ $age -ge 18 ] && [ $citizen = "yes" ] || [$citizen == "YES"]; then
echo "You are eligible to vote"
else
echo "You are not eligible to vote"
fi