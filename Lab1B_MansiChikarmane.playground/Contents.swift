//: A UIKit based Playground for presenting user interface
  
import UIKit

// define two integer arrays, one for daily pay and one for total calculated pay
var dailyPay = [Int]()
var totalPay = [Int]()

// define integer variable that stores the value for number of days of pay the pgm will calculate
var numOfDays = [1, 2, 3, 4, 5]

// pay per day. first day is 1 cent, second day is 2 cents, each day after it doubles
var first = 0.01
var second = 0.02

while Int(second) < numOfDays.count {
    Int(second) *= 2
   print(dailyPay.append(Int(second)))
}
