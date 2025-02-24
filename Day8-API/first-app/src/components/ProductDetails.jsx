import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { useParams } from 'react-router-dom';
 
const ProductDetails = () => {
    const { id } = useParams();
    const [data, setData] = useState(null);
 
    const fetchData = async () => {
        try {
            const resp = await axios.get(`https://dummyjson.com/products/${id}`);
            console.log(resp);
            setData(resp.data);
        } catch (err) {
            console.error(err);
        }
    };
 
    useEffect(() => {
        fetchData();
    }, [id]);
 
    if (!data) {
        return <div className="text-center mt-5">Loading...</div>;
    }
 
    return (
<div className="container mt-5">
<div className="card mb-3">
<div className="row g-0">
<div className="col-md-4">
<img src={data.thumbnail} alt={data.title} className="img-fluid rounded-start" />
</div>
<div className="col-md-8">
<div className="card-body">
<h1 className="card-title">{data.title}</h1>
<p className="card-text text-muted">{data.brand}</p>
<p className="card-text">{data.description}</p>
<h3 className="card-text text-primary">${data.price}</h3>
<p className="card-text">Availability: {data.availabilityStatus}</p>
<p className="card-text">Stock: {data.stock}</p>
<p className="card-text">Category: {data.category}</p>
<p className="card-text">Rating: {data.rating}</p>
<p className="card-text">Discount: {data.discountPercentage}%</p>
<p className="card-text">Minimum Order Quantity: {data.minimumOrderQuantity}</p>
<p className="card-text">Shipping Information: {data.shippingInformation}</p>
<p className="card-text">Return Policy: {data.returnPolicy}</p>
<p className="card-text">Warranty Information: {data.warrantyInformation}</p>
<p className="card-text">SKU: {data.sku}</p>
<p className="card-text">Dimensions: {data.dimensions.width} x {data.dimensions.height} x {data.dimensions.depth} cm</p>
<p className="card-text">Weight: {data.weight} kg</p>
<div>
<h5>Tags:</h5>
<ul className="list-inline">
                                    {data.tags.map((tag, index) => (
<li key={index} className="list-inline-item badge bg-secondary">{tag}</li>
                                    ))}
</ul>
</div>
<div>
<h5>Images:</h5>
                                {data.images.map((image, index) => (
<img key={index} src={image} alt={`${data.title} ${index + 1}`} className="img-thumbnail m-1" style={{ width: '100px' }} />
                                ))}
</div>
<button className="btn btn-primary mt-3">Add to Cart</button>
<button className="btn btn-secondary mt-3 ms-2">Buy Now</button>
</div>
</div>
</div>
</div>
<div className="card mt-3">
<div className="card-body">
<h5 className="card-title">Reviews</h5>
                    {data.reviews.map((review, index) => (
<div key={index} className="mb-3">
<h6>{review.reviewerName} <span className="text-muted">({review.reviewerEmail})</span></h6>
<p>Rating: {review.rating}</p>
<p>{review.comment}</p>
<p className="text-muted">Reviewed on: {new Date(review.date).toLocaleDateString()}</p>
<hr />
</div>
                    ))}
</div>
</div>
</div>
    );
};
 
export default ProductDetails;