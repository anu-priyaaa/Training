const array = [1,2,3,4,5,6,7,8,9,10]

const resultArray=[];
for (let num of array){
    resultArray.push(num*3);

}
console.log(resultArray);

const newArray = array.map((num)=>num*3);
console.log(newArray);

const evenArray = array.filter((num)=>num%2===0);
console.log(evenArray);

const found = array.find((num)=> num ===6);
console.log(found ? 'found '+found:'Not found') ;

const foundindex = array.findIndex((num) => num ===6);
console.log(foundindex ? 'Found'+foundindex: 'Not found ');

array.forEach(num=>console.log(num));
result=[35,67,89,65,94];
console.log(result.every(num=>num>=35)); // for all 
console.log(result.some(num=>num>=90)); // for any one 

console.log([[1,2],2,[3,4,5]].flat())

console.log(array.includes(5)); // check ele exists are not 

console.log("Anu Priya".indexOf('A'));
console.log("Anu Priya".lastIndexOf('P'));

const myarray=[10,20,20,40,50];
console.log(myarray.slice(2));
console.log(myarray.slice(2,4));

// add ele in btw
myarray.splice(3,0,60);
console.log(myarray);

// delete
myarray.splice(3,1);
console.log('After Delete',myarray);


// replace
myarray.splice(3,1,35);
console.log('After replace',myarray);