//
//  PhotoViewController.swift
//  personalInfo
//
//  Created by Mac on 25.10.2020.
//

import UIKit

class PhotoViewController: UIViewController {
    
    @IBOutlet var myphoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func logOutAction() {
        dismiss(animated: true)
    }
    
}
