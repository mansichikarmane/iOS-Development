//: A UIKit based Playground for presenting user interface
  
import UIKit

// define two arrays, one for daily pay and one for total calculated pay
var dailyPay:[Any] = []
var totalPay:[Any] = []

// pay per day. first day is 1 cent, second day is 2 cents, each day after it doubles
// calculates daily pay making double each day, adds to array called 'dailyPay'
print("\nDaily Pay")
var numOfDays = 30
var first = 0.01
var i = 0
var tempValue = 0.0
while (i < numOfDays) {
    if (i == 0) {
        dailyPay.append(contentsOf: [first])
    }
    else {
        first *= 2
        dailyPay.append(contentsOf: [first])
    }
    
    tempValue += dailyPay[i] as! Double
    tempValue = Double(round(100*tempValue)/100)
    totalPay.append(contentsOf: [tempValue])
    
    i += 1
}
print(dailyPay)

// takes dailyPay and adds up each day
print("\nTotal Pay")

print(totalPay, "\n")


// output results properly
let colPadding1 = 8
let colPadLength = 12
let headerString = "Day".padding(toLength: colPadding1, withPad: " ", startingAt: 0) + "Daily Pay".padding(toLength: colPadLength, withPad: " ", startingAt: 0) + "Total Pay".padding(toLength: colPadLength, withPad: " ", startingAt: 0)

print("\(headerString)\n")
i = 0
while ( i < (numOfDays) ) {
    i += 1

    print("\(i)".padding(toLength: colPadding1, withPad: " ", startingAt: 0)  + ("$\(dailyPay[i-1])".padding(toLength: colPadLength, withPad: " ", startingAt: 0)) + "$\(totalPay[i-1])".padding(toLength: colPadLength, withPad: " ", startingAt: 0))
}







