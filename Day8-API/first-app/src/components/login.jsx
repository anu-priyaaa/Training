function Login() {
    return (
        <div>
            <h3 className="text-centre p-2 text-bg-secondary">Login Page</h3>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Email address</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" />
 
            </div><label for="inputPassword5" class="form-label">Password</label>
            <input type="password" id="inputPassword5" class="form-control" aria-describedby="passwordHelpBlock" />
            <div id="passwordHelpBlock" class="form-text">
                Your password must be 8-20 characters long, contain letters and numbers, and must not contain spaces, special characters, or emoji.
            </div>
            <button className='btn btn-primary mt-3 w-100'>login</button>
        </div>
    );
}
 
export default Login;
 