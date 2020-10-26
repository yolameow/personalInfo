//
//  PhotoViewController.swift
//  personalInfo
//
//  Created by Mac on 25.10.2020.
//

import UIKit

class PhotoViewController: UIViewController {
    
    @IBOutlet var photoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoView.image = UIImage(named: "photo")
    }
    
    @IBAction func logOutAction() {
        dismiss(animated: true)
    }

}
