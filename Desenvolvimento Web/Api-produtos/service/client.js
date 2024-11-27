const clientRepository = require('../repository/client')

const getAll = () => {
    const clients = clientRepository.getAll()

    if(clients.length === 0){
        return {message: "Nenhum cliente cadastrado."}
    }

    return clients
}

const create = (req, res) =>{
    const {name, email, bornDate} = req.body
    
    const emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/; //REGEX
    

    if (!emailRegex.test(email)) {
        return res.status(400).json({ error: "E-mail inválido" });
    }

    const existingClient = clientRepository.getByEmail(email);

    console.log(existingClient)

    if(existingClient.length > 0){
        return res.status(400).json({error: "Email já vinculado a outro cliente"})
    }

    const result = clientRepository.create(name, email, bornDate)

    return res.status(201).json({
        message: "Cliente cadastrado com sucesso.",
        data: result
    }) 
}

module.exports = {
    getAll,
    create
}