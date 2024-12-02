// script.js

// Selecionar os elementos
const modal = document.getElementById('modal'); // Modal
const newClientBtn = document.getElementById('new-client-btn'); // Botão "Novo Cliente"
const cancelBtn = document.getElementById('cancel-btn'); // Botão "Cancelar"
const clientForm = document.getElementById('client-form'); // Formulário de cliente
const clientsContainer = document.getElementById('clients-container'); // Container dos clientes

// Função para abrir o modal
newClientBtn.addEventListener('click', () => {
    modal.classList.remove('hidden'); // Remove a classe que esconde o modal
});

// Função para fechar o modal
cancelBtn.addEventListener('click', () => {
    modal.classList.add('hidden'); // Adiciona a classe que esconde o modal
});

// Lógica para salvar um novo cliente
clientForm.addEventListener('submit', (e) => {
    e.preventDefault(); // Previne o envio padrão do formulário

    // Coleta os valores inseridos no formulário
    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const birthdate = document.getElementById('birthdate').value;

    // Criação de um novo card para o cliente
    const clientCard = document.createElement('div');
    clientCard.className = 'client-card'; // Classe para estilização

    // Inserção do conteúdo no card
    clientCard.innerHTML = `
        <h3>${name}</h3>
        <p>${email}</p>
        <p>${birthdate}</p>
        <button>Editar</button>
        <button>Inativar</button>
    `;

    // Adiciona o novo card ao container de clientes
    clientsContainer.appendChild(clientCard);

    // Remove a mensagem "Nenhum cliente cadastrado ainda", se existir
    if (clientsContainer.classList.contains('empty')) {
        clientsContainer.classList.remove('empty'); // Remove a classe de vazio
        clientsContainer.querySelector('p')?.remove(); // Remove a mensagem
    }

    // Fecha o modal e reseta o formulário
    modal.classList.add('hidden'); // Esconde o modal
    clientForm.reset(); // Reseta os valores do formulário
});