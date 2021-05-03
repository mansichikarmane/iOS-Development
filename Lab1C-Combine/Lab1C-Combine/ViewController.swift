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
        
        
        
    }


}

