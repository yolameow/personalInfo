//
//  ViewController.swift
//  personalInfo
//
//  Created by Mac on 23.10.2020.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginButtonOutlet: UIButton!
    
    var user = User(name: "Olga", username: "Username", password: "123")

    override func viewDidLoad() {
        usernameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "logged" else { return }
        let tabBarController = segue.destination as! UITabBarController
        let helloVC = tabBarController.viewControllers?.first as! HelloViewController
        _ = tabBarController.viewControllers?[1] as! AboutmeViewController
        _ = tabBarController.viewControllers?[2] as! PhotoViewController
        helloVC.trueUsername = usernameTextField.text ?? ""
    }
    
    @IBAction func loginButton() {
        if usernameTextField.text == user.username &&
            passwordTextField.text == user.password {
            performSegue(withIdentifier: "logged", sender: self)
            usernameTextField.text = ""
            passwordTextField.text = ""
        } else {
            performSegue(withIdentifier: "invalidlogged", sender: self)}
            passwordTextField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameTextField.resignFirstResponder()
        if textField == passwordTextField {
            passwordTextField.becomeFirstResponder()
}
      return true
    }
}

   
