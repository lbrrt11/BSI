document.getElementById('form-signup').addEventListener('submit', function (e) {
    e.preventDefault();

    const username = document.getElementById('username').value.trim();
    const password = document.getElementById('password').value.trim();
    const confirmPassword = document.getElementById('confirm-password').value.trim();

    if (!username || !password || !confirmPassword) {
        alert('Todos os campos são obrigatórios.');
        return;
    }

    if (password !== confirmPassword) {
        alert('As senhas não coincidem.');
        return;
    }
    
    const users = JSON.parse(localStorage.getItem('users')) || [];

    if (users.find(user => user.username === username)) {
        alert('Nome de usuário já existe.');
        return;
    }

    users.push({ username, password });

    localStorage.setItem('users', JSON.stringify(users));

    alert('Cadastro realizado com sucesso! Faça login para continuar.');
    window.location.href = 'login.html';
});