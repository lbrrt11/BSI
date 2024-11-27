const express = require('express')

const clientsRoutes = require("./route/client.js")
const productsRoutes = require("./route/product.js")

const PORT = 3000

const app = express();

app.use(express.json())

// app.use('/compras', comprasRoutes)

app.use("/clientes", clientsRoutes)

app.use("/produtos", productsRoutes)

app.use("/", (req, res) =>{
    return res.send("API de Gerenciamento de Compras")
})

app.listen(PORT, () => { 
    console.log("Server running in port " + PORT)
})