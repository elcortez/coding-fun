// Adding two numbers without using the +
// Bitwise AND: & ; OR: | ; XOR: ^ ; NOT: ~

const halfAdder = function (x, y) {
  return [(x & y), (x ^ y)];
}
console.log(halfAdder(1,1));
console.log(halfAdder(1,0));
console.log(halfAdder(0,1));
console.log(halfAdder(0,0));

console.log(JSON.stringify(halfAdder(1,1)) === JSON.stringify([1, 0]));
console.log(JSON.stringify(halfAdder(1,0)) === JSON.stringify([0, 1]));
console.log(JSON.stringify(halfAdder(0,1)) === JSON.stringify([0, 1]));
console.log(JSON.stringify(halfAdder(0,0)) === JSON.stringify([0, 0]));

console.log('...........................................')

const fullAdder = function(x, y, c = 0){
  let firstSum = halfAdder(x, y)
  let finalSum = halfAdder(firstSum[1], c)
  let carry = firstSum[0] | finalSum[0]
  return [carry, finalSum[1]]
}
console.log(fullAdder(1,1,1))
console.log(fullAdder(1,1,0))
console.log(fullAdder(0,1,0))
console.log(fullAdder(0,0,0))

console.log(JSON.stringify(fullAdder(1,1,1)) === JSON.stringify([1, 1]))
console.log(JSON.stringify(fullAdder(0,1,1)) === JSON.stringify([1, 0]))
console.log(JSON.stringify(fullAdder(1,0,1)) === JSON.stringify([1, 0]))
console.log(JSON.stringify(fullAdder(1,1,0)) === JSON.stringify([1, 0]))
console.log(JSON.stringify(fullAdder(1,0,0)) === JSON.stringify([0, 1]))
console.log(JSON.stringify(fullAdder(0,0,1)) === JSON.stringify([0, 1]))
console.log(JSON.stringify(fullAdder(0,1,0)) === JSON.stringify([0, 1]))
console.log(JSON.stringify(fullAdder(0,0,0)) === JSON.stringify([0, 0]))

console.log('...........................................')

const AddTwoPositiveNumber = function (x, y) {
  let firstBinary = x.toString(2).split('');
  let secondBinary = y.toString(2).split('');
  let maxLength = Math.max(firstBinary.length, secondBinary.length)

  const addingZeros = function (array, number) {
    let toAdd = number - array.length;
    for (i = 1; i <= toAdd ; i ++) {
      array.unshift('0')
    }
    return array
  }

  if(firstBinary.length < maxLength) {
    firstBinary = addingZeros(firstBinary, maxLength)
  } else if (secondBinary.length < maxLength) {
    secondBinary = addingZeros(secondBinary, maxLength)
  }


  let finalResult = []

  let carry = 0
  for (i = maxLength - 1; i > -1 ; i--) {
    let sum = fullAdder(firstBinary[i], secondBinary[i], carry)
    carry = sum[0]
    finalResult.unshift(sum[1])
  }

  return parseInt(finalResult.join(''), 2)
}

console.log(AddTwoPositiveNumber(1, 13) === 14);
console.log(AddTwoPositiveNumber(100, 13) === 113);
console.log(AddTwoPositiveNumber(20, 90) === 110);
console.log(AddTwoPositiveNumber(10000, 13) === 10013);



console.log('...........................................')

const add = function(x,y) {
  let carry_bit = 0;
  do {
    console.log('BEGIN .....')
    console.log('x = ' + x)
    console.log('y = ' + y)

    carry_bit = x & y;
    console.log('carry_bit x & y = ' + carry_bit);

    x = x ^ y;
    console.log('new x sum x ^ y = ' + x);

    y = carry_bit << 1;
    console.log('new y carry_bit << 1 = '  + y)
  } while(carry_bit)

  
  console.log('..... END')
  return x;
}

console.log(add(9, 13));