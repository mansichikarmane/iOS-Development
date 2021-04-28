//
//  ViewController.swift
//  guessGame
//
//  Created by Mansi Chikarmane on 4/26/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var outputField: UILabel!
    
    var gameSecret = 0
    var currentGuess = 0
    var isGameOver = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        inputField.layer.cornerRadius = 10.0
        inputField.layer.masksToBounds = true
        inputField.layer.borderWidth = 2.0
        inputField.layer.borderColor = UIColor.red.cgColor
        
        outputField.layer.cornerRadius = 10.0
        outputField.layer.masksToBounds = true
        outputField.layer.borderWidth = 2.0
        outputField.layer.borderColor = UIColor.blue.cgColor
        
        
        // set up when app is launched
        clearInputField()
        gameSecret = generateAppSecret()
        printOutput("\n")
        printOutput("I'm thinking of a number between 1 and 100 ... \n")
        printOutput("Can you guess? \n")
    }

    @IBAction func checkInput(_ sender: Any) {
    
        // first check if the game has input for restarting
        if isGameOver {
            let newGame = inputField.text
            if newGame == "y" || newGame == "Y" {
                isGameOver = false
                outputField.text = ""
                clearInputField()
                gameSecret = generateAppSecret()
                printOutput("\n")
                printOutput("I'm thinking of a number between 1 and 100 ... \n")
                printOutput("Can you guess? \n")
                return
            } else {
                exit(0)
            }
        }
        
        currentGuess = Int(inputField.text!) ?? 0
        
        if currentGuess > gameSecret {
            printOutput(String(currentGuess) + ": You guessed too high, go lower ... \n")
            clearInputField()
        }
        else if currentGuess < gameSecret {
            printOutput(String(currentGuess) + ": You guessed too low, go higher ... \n")
            clearInputField()
        }
        else {
            printOutput(String(currentGuess) + ": You guessed right, game over ... \n")
            isGameOver = true
            clearInputField()
            printOutput("\n Would you like to play again? (Y/y)\n")
        }
    }
    
    // Game continues checking new attempt
    // input is a string - try to convert into a number, otherwise it is 0
    
    
    
    func printOutput(_ printText: String) {
        // append the parameter string to existing output
        outputField.text = outputField.text! + printText
    }
    
    func clearInputField() {
        // clear the input text field
        inputField.text = ""
    }
    
    func generateAppSecret() -> Int {
        // create a secret number for the game
        // arc4random generates a rando number
        // %100 provides the remainder of divide by 100
        // +1 ensures number between 1 and 100
        
        return (Int(arc4random() % 100) + 1)
    }
    
}

