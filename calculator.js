function add() {
    work('add');
}

function subtract() {
    work('subtract');
}

function multiply() {
    work('multiply');
}

function divide() {
    work('divide');
}

function work(operation) {
    var number1 = parseFloat(document.getElementById('number1').value);
    var number2 = parseFloat(document.getElementById('number2').value);

    if (isNaN(number1) || isNaN(number2)) {
        alert('Please enter valid numbers');
        return;
    }

    var result;
    switch (operation) {
        case 'add':
            result = number1 + number2;
            break;
        case 'subtract':
            result = number1 - number2;
            break;
        case 'multiply':
            result = number1 * number2;
            break;
        case 'divide':
            if (number2 !== 0) {
                result = number1 / number2;
            } else {
                alert('Cannot divide by zero');
                return;
            }
            break;
        default:
            alert('Wrong operation');
            return;
    }

    alert('Result of the operation is: ' + result);
}
