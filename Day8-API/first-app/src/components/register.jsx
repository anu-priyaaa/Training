import axios from "axios";
import { useState} from "react";
import { useNavigate } from "react-router-dom";
 
function Register() {
    const [name,setName] = useState('');
    const [email,setEmail] = useState('');
    const [address,setAddress] = useState('');
    const navigate = useNavigate();
    const handleSubmit = async(e) =>{
        e.preventDefault();
        if(!name || !email || !address){
            alert('Please fill all the fields');
            return;
        }
        else{
            try{
                const uniqueNo = Date.now();
                const userObject = {id:uniqueNo+'',name,email,address};
                const resp = await axios.post('http://localhost:3000/users',userObject);
                if(resp.status === 201){
                    alert('User created successfully');
                    navigate('/users');
                }
            }catch(error){
                console.log(error);
            }
        }            
        console.log(name,email,address);
    }
    return (<div>
        <h3 className="text-center p-2 text-bg-secondary">Registartion page</h3>
        <form onSubmit={handleSubmit}>
 
            <div class="mb-3">
                <label class="form-label">Name</label>
                <input type="text" class="form-control" placeholder="John Doe" onChange={(e)=>setName(e.target.value)}/>
 
            </div>
 
            <div class="mb-3">
                <label class="form-label">Email </label>
                <input type="email" class="form-control" placeholder="John@gmail.com" onChange={(e)=>setEmail(e.target.value)} />
 
            </div>
            <div class="mb-3">
                <label class="form-label">Address</label>
                <input type="text" class="form-control" placeholder="Address here" onChange={(e)=>setAddress(e.target.value)}/>
 
 
            </div>
            <button type="submit" className="btn btn-primary w-100 mt-3">Submit</button>
        </form>
    </div>);
}
 
export default Register;