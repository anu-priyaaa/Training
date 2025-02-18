const print=() => console.log('Sample');
const greeting = (fullname)=>console.log('Welcome'+fullname);
const add=(num1,num2)=>num1+num2;

const calculator=(num1,num2)=>{
    const a=num1+num2;
    const b=num1*num2;
    return a*b;
}

greeting('Anu Priya');
console.log('Add:',add(3,4));
console.log ('Calculator:',calculator(3,4));