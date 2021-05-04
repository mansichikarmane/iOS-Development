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
    @IBOutlet var outputField: UILabel!
    
    
    // variables for input
    var startPay = 0.0
    var numOfDays = 0
    var doneEntering = false
    var dailyPay:[Any] = []
    var totalPay:[Any] = []
    
    
    
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
        printOutput("Please enter data below")
        
    }

    // button entry and behavior
    @IBAction func calculateInput(_ sender: Any) {
        clearOutput()
        
        // calculation logic
        startPay = Double(payInputField.text!) ?? 0
        numOfDays = Int(dayInputField.text!) ?? 0
        
        var i = 0
       
        
        while (i < numOfDays) {
                if (numOfDays == 1) {
                    dailyPay.append(contentsOf: [startPay])
                }
                else {
                    startPay *= 2
                    dailyPay.append(contentsOf: [startPay])
                }
                
//                tempVal += dailyPay[i-1] as! Double
//                tempVal = Double(round(100*tempVal)/100)
//                totalPay.append(contentsOf: [tempVal])
//
                i += 1
        }
            
        printOutput("On day \(numOfDays), daily pay earned was $\(dailyPay[i-1]) and total pay earned was")

    
            
        
    }

    // reset button to start over app
    @IBAction func clearBtn(_ sender: Any) {
        clearOutput()
        printOutput("Please enter data below")
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

