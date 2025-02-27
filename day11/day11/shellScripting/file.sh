echo "This is a test file" > file.txt

echo "This is a update file" >> file.txt

cat file.txt

# rm file.txt

if [ -f file.txt ]; then   #-f is a test operator used to check if a file exists and is a regular file 
echo "File exists"
else
echo "File does not exist"
fi