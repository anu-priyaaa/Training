echo "Hello "
name="Anu Priya"
salary=9476548
echo "Hello $name"
echo "salary $((salary*20))"
num1=10
num2=20
echo "Sum $((num1+num2))"

numbers=(10 20 30 40 50)
echo "First Number${numbers[0]}"
echo "fourth Number${numbers[4]}"
names=("anu" "bob" "chiku" "dart")
echo "First Name: ${name[0]}"

echo "Current user:$USER"
echo "Home directory:$Home"
readonly PI=3.14
echo "value of PI"$PI"
PI=3.89

echo "Script name $0"
echo "Arguments $1 "
echo "No of argumnets $# "