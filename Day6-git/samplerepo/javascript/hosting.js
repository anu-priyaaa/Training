console.log(a); // unidentified
var a=10;
console.log(a);//10

const test =function(){
    console.log('Test Triggered');
}

const myFunction = function test (){
    console.log('test trigerred')
}

var factorial = function fac(n) {
    return n < 2 ? 1 : n * fac(n-1); 
}
console.log(factorial(3))