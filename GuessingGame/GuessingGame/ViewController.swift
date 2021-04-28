//
//  ViewController.swift
//  GuessingGame
//
//  Created by Mansi Chikarmane on 4/26/21.
//

import UIKit

class ViewController: UIViewController {
    // input field textbox and output field button
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var outputField: UILabel!
    
    // variables
    var gameSecret = 0
    var currentGuess = 0
    var isGameOver = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         
        // customized input textbox
        inputField.layer.cornerRadius = 10.0
        inputField.layer.masksToBounds = true
        inputField.layer.borderWidth = 2.0
        inputField.layer.borderColor = UIColor.red.cgColor
        
        // customized output label
        outputField.layer.cornerRadius = 10.0
        outputField.layer.masksToBounds = true
        outputField.layer.borderWidth = 2.0
        outputField.layer.borderColor = UIColor.blue.cgColor
        
        // app setup when launched
       
        
    }
    
    @IBAction func checkInput(_ sender: Any) {
        // check for game in progress
        if isGameOver {
            let newGame = inputField.text
            if newGame == "y" || newGame == "Y" {
                isGameOver = false
                outputField.text = ""
                clearInputField()
                gameSecret = generateAppSecret()
                printOutput("\n")
                printOutput("I'm thinking of a number between 1 and 100 ... \n")
                printOutput("Can you guess the number? \n")
                return
            } else {
                exit(0)
            }
        }
        
        // Game continuing - check new attempt
        // input is string - try to convert to number, otherwise 0
        currentGuess = Int(inputField.text!) ?? 0
        
        if currentGuess > gameSecret {
            printOutput(String(currentGuess) + ": You guessed too high, go lower ... \n)")
        }
        else if currentGuess > gameSecret {
            printOutput(String(currentGuess) + ": You guessed too low, go higher ... \n)")
        }
        else {
            printOutput(String(currentGuess) + ": You guessed right, game over ... \n)")
            isGameOver = true
            clearInputField()
            printOutput("\nWould you like to play again(Y/y)\n")
            }
        
    }
    
    func printOutput(_ printText: String) {
        // append the parameter string to existing output
        outputField.text = outputField.text! + printText
    }
    
    func clearInputField() {
        // clear text field input
        inputField.text = ""
    }
    
    func generateAppSecret() -> Int {
        // creates a secret number for the game
        // arc4random generates a random number
        // %100 provides the remainder divide by 100
        // +1 ensures the number is between 1 to 100
        return (Int(arc4random() % 100) + 1)
    }
    
}

