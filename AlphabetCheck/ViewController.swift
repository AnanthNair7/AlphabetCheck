//
//  ViewController.swift
//  AlphabetCheck
//
//  Created by Aravindh on 18/07/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        // Set the maximum character length of a UITextField
        
        let maxLength = 10
        let currentNumber : NSString = textField.text as! NSString
        let newString : NSString = currentNumber.replacingCharacters(in: range, with: string) as NSString
        
        
        // Restricting the user to enter only the text field
        
        let allowedCharacters = "1234567890"
        let allowedCharacterSet = CharacterSet(charactersIn: allowedCharacters)
        let typedCharacterSet = CharacterSet(charactersIn: string)
        
        return allowedCharacterSet.isSuperset(of: typedCharacterSet) && newString.length <= maxLength
      
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        let phoneNumber = textField.text
        
        if  phoneNumber  == "9043824796" {
            // valid
            let positiveAlert = UIAlertController(title: "Welcome", message: "sucess", preferredStyle: UIAlertController.Style.alert)
            
            positiveAlert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            
            self.present(positiveAlert, animated: true, completion: nil)
        } else {
            // Invalid
            let negativeAlert = UIAlertController(title: "Error", message: "Enter the valid number", preferredStyle: UIAlertController.Style.alert)
            
            negativeAlert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            
            self.present(negativeAlert, animated: true, completion: nil)
            
        }
        
        
        
        
        
    }
    
}

