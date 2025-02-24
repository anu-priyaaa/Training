import Footer from "./components/Footer"
import Header from "./components/header"
import{BrowserRouter, Route, Routes} from 'react-router-dom';
import Home from "./components/home";
import About from "./components/about";
import Contact from "./components/contact";
import Users from "./components/users";
import Login from "./components/login";
import Products from "./components/products";
import ProductDetails from "./components/ProductDetails";
import Register from "./components/register";
function App() {
 
  return (
    <BrowserRouter>
    <div>
      <h1>Hello Everyone </h1>
      <p>this is my first app</p>
      <Header/>
      
      <Routes>
        <Route path='' element={<Home/>}/>
        <Route path="home" element={<Home/>}/>
        <Route path="about" element={<About/>}/>
        <Route path="contact" element={<Contact/>}/>
        <Route path="users" element={<Users/>}/>
        <Route path="login" element={<Login/>}/>
        <Route path="register" element={<Register/>}/>
        <Route path="Products" element={<Products/>}/>
        <Route path="Products/:id" element={<ProductDetails/>}/>
      </Routes>
      <Footer/>
    </div>
    </BrowserRouter>
  )
}

export default App
