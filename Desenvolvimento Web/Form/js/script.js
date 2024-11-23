document.querySelector('.login-form').addEventListener('submit', function(event) {
    event.preventDefault(); 
    
    const username = document.getElementById('username').value.trim();
    const password = document.getElementById('password').value.trim();
    
    const users = JSON.parse(localStorage.getItem('users')) || [];

    const user = users.find(user => user.username === username && user.password === password);

    if (user) {
        alert('Login bem-sucedido!');

        window.location.href = './home.html';
    }
    
    else {
        alert('Usuário ou senha incorretos!');
    }
});