import axios from 'axios';
import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';

function Products() {
    const [products, setProducts] = useState([]);

    const fetchData = async () => {
        try {
            const res = await axios.get('https://dummyjson.com/products');
            console.log(res);
            setProducts(res.data.products);
        } catch (error) {
            console.log(error);
        }
    }
    useEffect(() => {
        fetchData();
    }, []);
    return (
        <>
            <h3 className="text-center p-2 text-bg-secondary">
                Products Page
            </h3>
            <div className='row'>
                {
                    products.map(product => (
                        <div className='col-lg-4 col-md-6'>
                            <h3>{product.title}</h3>
                            <Link to={`/products/${product?.id}`}>
                                <img src={product.thumbnail} />
                            </Link>
                            <p>${product.price}</p>
                            <p>Rating: {product.rating}</p>
                            <button className='btn btn-primary'>Add to Cart</button>
                        </div>
                    ))
                }
            </div>
        </>
    );
}

export default Products;
