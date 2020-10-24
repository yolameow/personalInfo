//
//  ViewController.swift
//  personalInfo
//
//  Created by Mac on 23.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    
    @IBAction func loginButton() {
        let trueUsername = "Username"
        let truepassword = "123"
        
        if usernameTextField.text == trueUsername && passwordTextField.text == truepassword {
            performSegue(withIdentifier: "logged", sender: self)
            
           // usernameTextField.text = ""
           // passwordTextField.text = ""
        } else
        { performSegue(withIdentifier: "invalidlogged", sender: self)}
       
       // passwordTextField.text = ""
    }
    
   
}
