var canvas = document.getElementById('captchaCanvas');
var context = canvas.getContext('2d');
var captchaForm = document.getElementById('captchaForm');
var captchaInput = document.getElementById('captchaInput');
var captchaText = generateCaptcha();

window.onload = function() {
    context.font = '20px Arial';
    context.fillText(captchaText, 10, 25);

    captchaForm.onsubmit = function(e) {
        e.preventDefault();
        if (captchaInput.value === captchaText) {
            alert('CAPTCHA correcto!');
        } else {
            alert('CAPTCHA incorrecto. Por favor, inténtalo de nuevo.');
            captchaInput.value = '';
            captchaText = generateCaptcha();
            context.clearRect(0, 0, canvas.width, canvas.height);
            context.fillText(captchaText, 10, 25);
        }
    };
};

function generateCaptcha() {
    var chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    var result = '';
    for (var i = 0; i < 5; i++) {
        result += chars.charAt(Math.floor(Math.random() * chars.length));
    }
    return result;
}
