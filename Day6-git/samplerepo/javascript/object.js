const person ={
    firstname:"Anu Priya",
    lastname:"Gowda",
    email:"anu@gmail.com",
    age :45,
    address:{
        street:"XYZ",
        city:"newyork",
        zipcode:57301,
        country:"US"
    },
    greeting: function(){
        console.log('Welcome $ {this.firstname} $ {this.lastname}')
    }
}
console.log("Address ",person)
person.greeting()
console.log(person['email']);

for(let key in person){
    console.log(key, person[key])
    }