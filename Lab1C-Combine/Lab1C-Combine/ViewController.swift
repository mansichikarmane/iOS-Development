//
//  ViewController.swift
//  Lab1C-Combine
//
//  Created by Mansi Chikarmane on 5/3/21.
//

import UIKit

class ViewController: UIViewController {

    // linking text inputs from storyboard
    @IBOutlet var payInputField: UITextField!
    @IBOutlet var dayInputField: UITextField!
    // linking label output from storyboard
    
    @IBOutlet var outputField: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // styling of text inputs
        payInputField.layer.cornerRadius = 10.0
        payInputField.layer.masksToBounds = true
        payInputField.layer.borderWidth = 0.5
        
        dayInputField.layer.cornerRadius = 10.0
        dayInputField.layer.masksToBounds = true
        dayInputField.layer.borderWidth = 0.5
        
        // styling output label
        outputField.layer.cornerRadius = 15.0
        outputField.layer.borderWidth = 2.0
        outputField.layer.borderColor = UIColor.systemYellow.cgColor
        
        
        // set up when app is launched
        clearPayInputField()
        clearDayInputField()
        printOutput("\n\n\n\n\n\n\nPlease enter info in the fields below to start calculations")
        
    }

    // button entry and behavior
    @IBAction func calculateInput(_ sender: Any) {
        clearOutput()
        
        // declare variables & calculate logic of calculations
        var dailyPay:[Any] = []
        var totalPay:[Any] = []
        var numOfDays = 0
        var firstPay = 0.0
        var tempValue = 0.0
        
        numOfDays = Int(dayInputField.text!) ?? 0
        firstPay = Double(payInputField.text!) ?? 0
        
        var i = 0
        while (i < numOfDays) {
            if (i == 0) {
                dailyPay.append(contentsOf: [firstPay])
            }
            else {
                firstPay *= 2
                dailyPay.append(contentsOf: [firstPay])
            }
            
            tempValue += dailyPay[i] as! Double
            tempValue = Double(round(100*tempValue)/100)
            totalPay.append(contentsOf: [tempValue])
            
            i += 1
        }
        
        i = 0
        while (i < (numOfDays)) {
            i += 1
            printOutput("On day \(i), daily pay earned was $\(dailyPay[i-1]) and total pay earned was $\(totalPay[i-1])\n")
        }
            
        
    }

    // reset button to start over app
    @IBAction func clearBtn(_ sender: Any) {
        clearOutput()
        printOutput("\n\n\n\n\n\n\nPlease enter info in the fields below to start calculations")
        clearPayInputField()
        clearDayInputField()
        
    }
    
    
    
    // helper functions
    func clearPayInputField() {
        payInputField.text = ""
    }
    
    func clearDayInputField() {
        dayInputField.text = ""
    }
    
    func printOutput(_ printText: String) {
        outputField.text = outputField.text! + printText
    }
    
    func clearOutput() {
        outputField.text = ""
    }
    
}

