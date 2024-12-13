import axios from "axios";

// URL do backend, pode ser modificada conforme o ambiente
const API_URL = "http://localhost:3000";

// Função para pegar todos os clientes
export async function getClientes(): Promise<any[]> {
    try {
        const response = await axios.get(`${API_URL}/clients`);
        return response.data;
    } catch (error) {
        console.error('Erro ao carregar clientes:', error);
        throw error;
    }
}

// Função para salvar um novo cliente
export async function postCliente(cliente: { nome: string, email: string, nascimento: string }): Promise<any> {
    try {
        const response = await axios.post(`${API_URL}/clients`, cliente);
        return response.data;
    } catch (error) {
        console.error('Erro ao salvar cliente:', error);
        throw error;
    }
}

// Função para pegar todos os produtos
export async function getProdutos(): Promise<any[]> {
    try {
        const response = await axios.get(`${API_URL}/products`);
        return response.data;
    } catch (error) {
        console.error('Erro ao carregar produtos:', error);
        throw error;
    }
}

// Função para salvar um novo produto
export async function postProduto(produto: { nome: string, preco: number }): Promise<any> {
    try {
        const response = await axios.post(`${API_URL}/products`, produto);
        return response.data;
    } catch (error) {
        console.error('Erro ao salvar produto:', error);
        throw error;
    }
}

// Função para pegar todas as compras
export async function getCompras(): Promise<any[]> {
    try {
        const response = await axios.get(`${API_URL}/purchases`);
        return response.data;
    } catch (error) {
        console.error('Erro ao carregar compras:', error);
        throw error;
    }
}

// Função para salvar uma nova compra
export async function postCompra(compra: { id: number, status: string }): Promise<any> {
    try {
        const response = await axios.post(`${API_URL}/purchases`, compra);
        return response.data;
    } catch (error) {
        console.error('Erro ao salvar compra:', error);
        throw error;
    }
}