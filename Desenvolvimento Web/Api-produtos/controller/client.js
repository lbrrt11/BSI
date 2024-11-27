const clientService = require('../service/client')

const getAll = () => {
    return clientService.getAll()
}

const create = (req, res) => {
    return clientService.create(req, res)
}

module.exports = {
    getAll,
    create
}