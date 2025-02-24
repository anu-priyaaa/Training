import axios from "axios";
import { useEffect,useState } from "react";
 
function Users() {
    const [users,setUsers] = useState([]);
    const fetchData = async() =>{
        try{
            const resp = await axios.get('http://localhost:3000/users');
            setUsers(resp.data)
        }
        catch(error){
            console.log(error);
        }
    }  
   
   
    const deleteUser = async(id) =>{
        try{
            const resp = await axios.delete(`http://localhost:3000/users/${id}`);
            if(resp.status === 200){
                alert('User deleted successfully');
                setUsers(users.filter(user => user.id!==id));
            }
        }
        catch(error){
            console.log(error);
        }
    }
useEffect(() => {
    fetchData();
}
, [])
    return (
    <div>
        <h3>user's list</h3>
        <table className="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                </tr>
            </thead>
            <tbody>
                {
                    users.map(user => (
                        <tr>
                            <td>{user.id}</td>
                            <td>{user.name}</td>
                            <td>{user.email}</td>
                            <td>{user.address}</td>
                            <td>
                                <button className="btn btn-danger" onClick={() => deleteUser(user.id)}> X </button>
                            </td>
                        </tr>
                    ))
                }
            </tbody>
                 
        </table>
    </div>);
}
 
export default Users;