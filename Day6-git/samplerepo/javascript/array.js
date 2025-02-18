const array =[];// empty array
const array1 =[1,2,3,4,5,6,7];
const array2 =new Array(4);

console.log(array.length); //0
console.log(array1.length);//7
console.log(array2.length);//4

array.push(10);
array.push(20);
array.push(30);
console.log('After Push',array)
array.unshift(5);
array.unshift(2);
console.log('After unshift',array)
console.log(array.pop());
console.log('After pop',array)
console.log(array.shift());
console.log('After shift array',array)

