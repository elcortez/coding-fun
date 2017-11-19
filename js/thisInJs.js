// Source: https://zellwk.com/blog/this/

// ----- in global context => window object in browser -----
console.log(this) // Window

// ----- in object construction => instance of object -----
function Human (age) {
  this.age = age
}
let paul = new Human(22)
console.log(paul) // Human { age: 22 }


// ----- in object method (method = function + object) => object itself -----
let o = {
  sayThis () {
    console.log(this)
  }
}
o.sayThis() // { sayThis: [Function: sayThis] }


function Human (name) {
  return {
    name,
    getName() {
      return this.name
    }
  }
}
const zell = new Human('Zell')
console.log(zell.getName()) // Zell
console.log(zell) // { name: 'Zell', getName: [Function: getName] }

// ----- in simple function => browser window -----
function simpleFunction () {
  console.log(this)
}
simpleFunction() // Window

// ----- in arrow function => the object -----

const o = {
  doSomethingLater () {
    setTimeout(() => this.speakLeet(), 1000)
  },
  speakLeet() {
    console.log(`1337 15 4W350M3`)
  }
}
o.doSomethingLater() // 1337 15 4W350M3


// ----- in event listener => the element that fired the event -----
let button = document.querySelector('button')

button.addEventListener('click', function() {
  console.log(this) // button
})

button.addEventListener
