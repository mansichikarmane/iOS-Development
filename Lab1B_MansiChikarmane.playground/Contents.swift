//: A UIKit based Playground for presenting user interface
  
import UIKit

// define two integer arrays, one for daily pay and one for total calculated pay
var dailyPay:[Any] = []
var totalPay:[Any] = []

// define integer variable that stores the value for number of days of pay the pgm will calculate
//var numOfDays = 30
//print("Days")
//for value in 1...numOfDays {
//    print(value)
//}

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
//i = 0
//var tempValue = 0.0
//
//while (i < dailyPay.count) {
//    tempValue += dailyPay[i] as! Double
//    tempValue = Double(round(100*tempValue)/100)
//    totalPay.append(contentsOf: [tempValue])
//
//    i += 1
//}
print(totalPay, "\n")


// output results properly
print("Day Daily Pay   Total Pay")
i = 0
while ( i < (numOfDays) ) {
    i += 1
    print(i, " $", dailyPay[i-1], " $", totalPay[i-1])
}







