//: A UIKit based Playground for presenting user interface
  
import UIKit

// define two integer arrays, one for daily pay and one for total calculated pay
var dailyPay:[Any] = [0.01]
var totalPay:[Int] = []

// define integer variable that stores the value for number of days of pay the pgm will calculate
var numOfDays = 31
print("Days")
for value in 1...31 {
    print(value)
}
// pay per day. first day is 1 cent, second day is 2 cents, each day after it doubles
// calculates daily pay making double each day, adds to array called 'dailyPay'
print("\nDaily Pay")
var first = 0.01
var i = 0
while (i < numOfDays) {
    first *= 2
    i += 1
    dailyPay.append(contentsOf: [first])
}
print(dailyPay)

// takes dailyPay and adds up each day
print("\nTotal Pay")
var k = 0
var day1 = dailyPay[k]
var day2 = dailyPay[k+1]
func addDailys(day1: Int, day2: Int) {
    while (k < dailyPay.count) {
        k += 1
        totalPay.append(contentsOf: [day1 + day2])
    }
    
    print(totalPay)
}



