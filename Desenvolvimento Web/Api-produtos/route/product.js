const express = require('express');
const productController = require('../controller/product');

const productRouter = express.Router();

productRouter.get('/', (req, res) => {
    try{
        const products = productController.getAllProducts();
        console.log(products)
        return res.status(200).json(products);
    } catch (e) {
        return res.status(500).json({message: "Erro ao buscar todos os produtos.", details: e.message})
    }
});

module.exports = productRouter;