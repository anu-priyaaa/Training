class Cart {
    constructor() {
        this.items = [];
    }

    // Method to add an item to the cart
    addItem(product) {
        this.items.push(product);
        console.log(`${product.quantity} ${product.name}(s) added to the cart.`);
    }

    // Method to remove an item from the cart
    removeItem(productName) {
        this.items = this.items.filter(item => item.name !== productName);
        console.log(`${productName} removed from the cart.`);
    }

    // Method to update the quantity of an item in the cart
    updateItem(productName, newQuantity) {
        const product = this.items.find(item => item.name === productName);
        if (product) {
            product.quantity = newQuantity;
            console.log(`${productName} quantity updated to ${newQuantity}.`);
        } else {
            console.log(`${productName} not found in the cart.`);
        }
    }

    // Method to calculate and show the total amount of the cart
    showTotalAmount() {
        const totalAmount = this.items.reduce((total, item) => total + (item.price * item.quantity), 0);
        console.log(`Total Amount: ${totalAmount}`);
    }

    // Method to display the items in the cart
    displayCart() {
        console.log("Cart Contents:");
        this.items.forEach(item => {
            console.log(`${item.quantity} x ${item.name} @ ${item.price} each`);
        });
        this.showTotalAmount();
    }
}

// Example usage:
const myCart = new Cart();
myCart.addItem({ name: 'Apple', price: 10, quantity: 3 }); // 3 Apples added to the cart.
myCart.addItem({ name: 'Banana', price: 5, quantity: 6 }); // 6 Bananas added to the cart.
myCart.displayCart(); // Displays the cart contents and total amount
myCart.updateItem('Apple', 5); // Apple quantity updated to 5.
myCart.displayCart(); // Displays the updated cart contents and total amount
myCart.removeItem('Banana'); // Banana removed from the cart.
myCart.displayCart(); // Displays the updated cart contents and total amount