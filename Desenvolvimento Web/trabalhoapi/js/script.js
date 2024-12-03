const modal = document.getElementById('modal');
const newClientBtn = document.getElementById('new-client-btn');
const cancelBtn = document.getElementById('cancel-btn');
const clientForm = document.getElementById('client-form');
const clientsContainer = document.getElementById('clients-container');

newClientBtn.addEventListener('click', () => {
    modal.classList.remove('hidden');
});

cancelBtn.addEventListener('click', () => {
    modal.classList.add('hidden');
});

clientForm.addEventListener('submit', (e) => {
    e.preventDefault();

    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const birthdate = document.getElementById('birthdate').value;

    const clientCard = document.createElement('div');
    clientCard.className = 'client-card';

    clientCard.innerHTML = `
        <h3>${name}</h3>
        <p>${email}</p>
        <p>${birthdate}</p>
        <button>Editar</button>
        <button>Inativar</button> `;

    clientsContainer.appendChild(clientCard);

    if (clientsContainer.classList.contains('empty')) {
        clientsContainer.classList.remove('empty');
        clientsContainer.querySelector('p')?.remove();
    }

    modal.classList.add('hidden');
    clientForm.reset();
});
