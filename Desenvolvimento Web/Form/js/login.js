document.addEventListener('DOMContentLoaded', function () {
    document.getElementById('form-login').addEventListener('submit', function (event) {
        event.preventDefault();

        const username = document.getElementById('username').value.trim();
        const password = document.getElementById('password').value.trim();

        console.log("Username:", username);
        console.log("Password:", password);

        const users = JSON.parse(localStorage.getItem('users')) || [];
        console.log("Users in localStorage:", users);

        const user = users.find(user => user.username === username && user.password === password);

        if (user) {
            localStorage.setItem('currentUser', username);
            alert('Login bem-sucedido!');
            window.location.href = 'home2.html';
        }
        
        else {
            alert('Usuário ou senha incorretos!');
        }
    });
});
