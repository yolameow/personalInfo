//
//  UsernameViewController.swift
//  personalInfo
//
//  Created by Mac on 23.10.2020.
//

import UIKit

class UsernameViewController: UIViewController {
    
    
    @IBOutlet var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.layer.cornerRadius = 20
    }
    
    @IBAction func OkAction() {
        dismiss(animated: true)
    }
    
}
