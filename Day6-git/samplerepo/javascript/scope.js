let name="test"; //global variable
function hello (){
    if (true){
        let a=10;
        const b=20;
        var c =30;
        console.log('Inside function let',a)
        console.log('Inside function const',b)
        console.log('Inside function var',c)
     
    }
    console.log ('Outside if block var',c)
}
function myFunction (){
    let a=10;
    const b=20;
    var c =30;

    console.log('Inside function let',a)
    console.log('Inside function const',b)
    console.log('Inside function var',c)
}
hello()
myFunction()
