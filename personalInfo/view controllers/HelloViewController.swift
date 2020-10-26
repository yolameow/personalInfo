//
//  HelloViewController.swift
//  personalInfo
//
//  Created by Mac on 25.10.2020.
//

import UIKit

class HelloViewController: UIViewController {

    
    @IBOutlet var helloUserLabel: UILabel!
    
    var trueUsername = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloUserLabel.text = "Hello, \(trueUsername)!"
    }
  
    @IBAction func logOutAction() {
       dismiss(animated: true)
    }
}
