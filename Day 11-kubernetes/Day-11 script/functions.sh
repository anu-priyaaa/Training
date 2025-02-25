add_nos() {
    sum=$(( $1 + $2 ))
    echo "Sum of $1 and $2 is: $sum"


}
add_nos 10 20

check_file(){
    if [ -f "$1" ]; then
        echo "File '$1' exists."
    else 
        echo "File '$1' does not exists."
    fi
}
check_file "functions.sh"

system_info() {
    echo "operting System: $(uname -o)"
    echo "kernal Version: $(uname -r)"
    echo "Disk usage:"
    df -h | grep '^/dev/'
}
system_info