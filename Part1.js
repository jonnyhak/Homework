
function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function madLib(verb, adj, noun) {
    return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
}


function isSubstring(str, sub) {
    return str.includes(sub); 
}


function fizzBuzz(arr) {
    const empty = [];
    for (let i = 0; i < arr.length; i++) {
        if ((arr[i] % 3 === 0 && arr[i] % 5 !== 0) || (arr[i] % 3 !== 0 && arr[i] % 5 === 0)) {
            empty.push(arr[i]);
        }
    }
    return empty;
}

function isPrime(n) {
    if (n < 2 ) {return false;}

    for (let i = 2; i < n; i++) {
        if (n % i === 0) {
            return false;
        }
    }

    return true; 
}

function sumOfNPrimes(n) {
    let sum = 0;
    let countPrimes = 0;
    let i = 2;

    while (countPrimes < n) {
        if (isPrime(i)) {
            sum += i;
            countPrimes++
        }
        i++
    }

    return sum;
}






