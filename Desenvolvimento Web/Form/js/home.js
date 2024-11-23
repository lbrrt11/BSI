const users = JSON.parse(localStorage.getItem('users')) || [];

const usernameDisplay = document.getElementById('username-display');
const currentUser = users.find(user => user.username === localStorage.getItem('currentUser'));

if (currentUser) {
    usernameDisplay.textContent = currentUser.username;
}

else {
    usernameDisplay.textContent = "Usuário não encontrado";
}
