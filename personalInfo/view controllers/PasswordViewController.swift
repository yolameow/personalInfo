//
//  PasswordViewController.swift
//  personalInfo
//
//  Created by Mac on 24.10.2020.
//

import UIKit

class PasswordViewController: UIViewController {

    @IBOutlet var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.layer.cornerRadius = 20
    }
   
    @IBAction func OkAction() {
        dismiss(animated: true)
    }
}
