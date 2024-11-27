const productService = require("../service/product")

const getAllProducts = () => {
    const products = productService.getAllProducts();
    
    return products
}

module.exports = {
    getAllProducts
};