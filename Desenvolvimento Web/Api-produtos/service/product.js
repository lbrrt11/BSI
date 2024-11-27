const productRepository = require('../repository/product');

const getAllProducts = () => {
    const products = productRepository.getAllProducts();

    if (products.length === 0) {
        return {message: "Nenhum produto cadastrado"};
    }

    return products;
};

module.exports = {
    getAllProducts
};