//: Playground - noun: a place where people can play

// Algorithm to determine if a number is prime
//  A prime number is a number that is only divisable by itself and 1

import UIKit

var myNumber = 5;
var number = 5;

/*
 *  Function takes an integer and returns a boolean. 
 *  TRUE if prime and FALSE if non-prime
 */
func isPrime(number:Int) -> Bool {
    // Start with i = 2 because 1 goes into every number
    
    if(number == 1) {
     return false
    }
    
    for(i = 2; i < number; i++) {
        if(number % i == 0) {
            return false
        } else {
            return true
        }
    }
}
