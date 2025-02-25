echo "Enter your choice(anupriya/other/restart)"
read name
 
case $name in
    "anupriya")
        echo "Hello Anu Priya."
        ;;
    "others")
        echo "Other names."
        ;;
 
    *)
        echo "Default Name."
        ;;
esac