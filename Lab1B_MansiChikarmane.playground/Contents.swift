//: A UIKit based Playground for presenting user interface
  
import UIKit

// define two arrays, one for daily pay and one for total calculated pay
var dailyPay:[Any] = []
var totalPay:[Any] = []

// create interver variable which will store value for number of days ('numOfDays')
var numOfDays = 30

// loop and elements to add values to the dailyPay and totalPay arrays
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


// output results properly in table format
let colPadding1 = 8
let colPadLength = 12
let headerString = "Day".padding(toLength: colPadding1, withPad: " ", startingAt: 0) + "Daily Pay".padding(toLength: colPadLength, withPad: " ", startingAt: 0) + "Total Pay".padding(toLength: colPadLength, withPad: " ", startingAt: 0)

print("\(headerString)\n")
i = 0
while ( i < (numOfDays) ) {
    i += 1

    print("\(i)".padding(toLength: colPadding1, withPad: " ", startingAt: 0)  + ("$\(dailyPay[i-1])".padding(toLength: colPadLength, withPad: " ", startingAt: 0)) + "$\(totalPay[i-1])".padding(toLength: colPadLength, withPad: " ", startingAt: 0))
}







