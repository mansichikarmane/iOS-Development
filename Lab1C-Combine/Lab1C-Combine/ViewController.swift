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
    var startPay = 0
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
        
        
        // set up when app is launched
        clearPayInputField()
        clearDayInputField()
        printOutput("Calculations will show here once data is below...")
    }

    // button entry and behavior
    @IBAction func calculateInput(_ sender: Any) {
        if doneEntering {
            let newEntry = payInputField.text
            if newEntry == "y" || newEntry == "Y" {
                doneEntering = false
                outputField.text = ""
                clearPayInputField()
                clearDayInputField()
                printOutput("\n Calculations will show here once data is below...")
                return
            }

        
        // calculation logic
            startPay = Int(payInputField.text!) ?? 0
            numOfDays = Int(dayInputField.text!) ?? 0
            
            if startPay > 0 && numOfDays > 0{
                printOutput(String(startPay) + "Current Pay")
            }
        }
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
    
}

