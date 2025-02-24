const resp=fetch('https://jsonplaceholder.typicode.com/users')
resp
.then(resp=>resp.json())
.then(json=>console.log(json))
.catch(err=>console.log(err))
.finally(()=>console.log('Promise executed'))
