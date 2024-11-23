const passwordInput = document.getElementById('password');
const passwordDisplay = document.getElementById('password-display');

let realPassword = "";

passwordDisplay.addEventListener('input', () => {
    const lastChar = passwordDisplay.value.slice(-1);
    
    if (passwordDisplay.value.length > realPassword.length) {
        realPassword += lastChar;
    }
    
    else {
        realPassword = realPassword.slice(0, -1);
    }
    
    passwordInput.value = realPassword;
    passwordDisplay.value = '*'.repeat(realPassword.length);
});