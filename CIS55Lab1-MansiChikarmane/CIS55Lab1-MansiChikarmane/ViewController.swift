//
//  ViewController.swift
//  CIS55Lab1-MansiChikarmane
//
//  Created by Mansi Chikarmane on 4/16/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        email.delegate = self
    }
    

    @IBAction func didTapButton() {
        showAlert()
    }
    
    func showAlert(){
        let alert = UIAlertController(title: "Thank You", message: "You are now signed up for email alerts", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: { action in print("tapped Okay")}))
        
        present(alert, animated:true)
    }
    
    
    @IBOutlet weak var email: UITextField!
    

    
}

extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
