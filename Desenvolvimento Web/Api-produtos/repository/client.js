const { v4: uuidv4 } = require('uuid');

let clients = []

const getAll = () => {
    return clients;
}

const getById = (id) => {
    const client = clients.filter(client => client.id  === id)
    return client;

}

const getByEmail = (email) => {
    const client = clients.filter(client => client.email === email)
    return client
}

const create = (name, email, bornDate) => {
    const client = {
        id: uuidv4(),
        name,
        email,
        bornDate,
    }

    clients.push(client);

    return client
}

module.exports = {
    getAll,
    getById,
    create,
    getByEmail
}