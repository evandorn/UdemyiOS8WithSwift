//: Playground - noun: a place where people can play

import UIKit

/* Strings  */
var str = "Hello, playground"

str = "Goodbye"

var name:String = "Evan"

name = "Abi"

var unknownString:String        // Need to set data-type for uninitialized variable

unknownString = "3"

/* Integers and Doubles */
var int = 21

3 * int

var a:Int = 5
var b = a * 3

var c:Double = 5 / 2

c * 2

c * 4

c * (Double)(int)   // Casting an Int type to a Double

/* Embedding Strings and Numbers inside of Strings */

var longSentance = str + " " + name

var newString = "my girlfriend is " + "\(int)"


var e: Double = 3.5
var f: Double = 4
var g: Double = e * f

var result = "The multiple of \(e) and \(f) is " + " " + "\(g)"

/* Arrays are a collection of variables 
 *  Allow a set of variables in the same object
 */

var arr = [1, 2, 3, 4, 5]

arr[0]
arr[2]                          // Arrays in start at 0 'duh' arr[2] produces the 3rd element

arr.append(6)                   // append to the tail of the array
println(arr)

arr.removeAtIndex(2)            // will remove 3

println(arr)

arr.removeLast()                // remove from the tail of the array
println(arr)

arr.removeRange(1...2)          // Remove everything from the first element to the second
println(arr)

var newArr = [1, 2.3, "Abi"]    // Is possible to have an array of mixed types. It is convention to have same type though
var emptyArr:[Int] = []         // When creating an empty array, must specify the type


/* Dictionaries: An unordered array */
var dict = ["name": "Evan", "age": 23, "gender": "male"]

println(dict["name"])       // Returns optional because swift doesn't know if name has a value

println(dict["name"]!)      // To force it to return a vaule we have to use the optional operator

// Adding values to dictionaries

dict["haircolor"] = "blonde"        // adds to the dictionary

dict["age"] = "old"                 // Changes the value. Even changing the type doesn't matter

dict["age"] = nil                   // Sets the value to nil 

var myName = dict["name"]

var myString = "my name is \(myName!)"  // Have to use the optional operator to tell Swift you are certain the variable has a value


// Array Challange
var myArr = [2, 4, 6, 8]
myArr.removeAtIndex(0)      // remove first element
myArr.append(10)            // add at the end of the array


// Dictionary Challange

var aboutMe:Dictionary = ["name": "Evan", "age": 23, "occupation": "student", "girlfriend": "Abi"]

println(aboutMe)

var nombre = aboutMe["name"]!

var time = 9

if(aboutMe["name"] == "Evan" && time < 12) {
    println("Yes, I'm \(nombre) and its \(time) o'clock. Buenos dias!")
} else if(aboutMe["name"] == "Evan" && time > 12 && time < 19) {
    println("Yes, I'm \(nombre) and its \(time) o'clock. Buenos tardes!")
} else {
    println("Who are you?")
}

// Module returns the remainder of divison
var remainder = 9 % 2
var remainder2 = 11 % 3

var x = 13

// If there is a remainder then x is odd
if(x % 2 == 0) {
    println("X is even")
} else {
    println("X is odd")
}

x = 10
// Running the if statement again we see x is even
if(x % 2 == 0) {
    println("X is even")
} else {
    println("X is odd")
}

var randomNumber = arc4random_uniform(10)        // will give you a random number from 0 to 10

/*
 *  Incrementing loops
 */

// Run the loop 9 times
for(var i = 1; i < 10; i++) {
    println(i)
}

// Will run 5 times
for(var i = 1; i < 10; i = i + 2) {
    println(i)
}

for(var i = 3; i < 8; i = i + 2) {
    println(i)
}

/*
*  Decrementing loops
*/
for(var i = 1; i < 10; i = i + 1) {
    println(i)
}


// All of the multiples of 5 until 50
for(var i = 5; i <= 50; i = i + 5) {
    println(i)
}

var theArray = [6, 3, 8, 1]

// looping through the array
for x in theArray {
    println(x)
}

// if you want to change the array must use enumerate function
for (index, x) in enumerate(theArray) {
    theArray[index] = x + 1
}

// Half all the values in the array
var arrayToHalf = [9.0, 6.0, 1.0, 6.0]

for(index, value) in enumerate(arrayToHalf) {
    arrayToHalf[index] = arrayToHalf[index] / 2.0
}

/* While loops */

// Declare counter outside the loop
var i = 1

while(i < 5) {
    println(i)
    i++
}

while(i < 5) {
    println(i)
    i++
}

// while loop to print the first 10 even numbers
var counter:Int = 0

while(counter < 10) {
    counter = counter + 2
    println(counter)
}

// looping through arrays using while loops
var whileArray = [6, 2, 9, 1]
var whileIndex = 0

while (whileIndex < arr.count) {                    // arr.count = number of elements in the array
    println(whileArray[whileIndex])
    whileIndex++
}

// Create an array with 6 numbers and use a while loop to decrease every value by one

var arrayToDecrease = [8, 4, 7, 2, 9, 12]
var myArrIndex = 0

while(myArrIndex < arrayToDecrease.count) {
    arrayToDecrease[myArrIndex] = arrayToDecrease[myArrIndex] - 1
    myArrIndex++
}

