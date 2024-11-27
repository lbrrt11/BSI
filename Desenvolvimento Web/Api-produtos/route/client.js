const express = require('express')

const clientController = require('../controller/client.js')

const clientRouter = express.Router();

clientRouter.get("", (req, res) => {
    try{
        const clients = clientController.getAll()

        return res.status(200).json(clients)

    } catch (e) {

        return res.status(500).json({message: "Erro ao buscar todos os clientes."})
    }
})

clientRouter.post("", (req, res) =>{
    try{
       return clientController.create(req, res);
    } catch (e){
        return res.status(500).json({message: "Erro ao cadastrar cliente."})
    }
})

module.exports = clientRouter;