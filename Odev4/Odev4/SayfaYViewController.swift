//
//  SayfaYViewController.swift
//  Odev4
//
//  Created by Onur Kızkın on 30.12.2023.
//

import UIKit

class SayfaYViewController: UIViewController, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    @IBAction func backButtonTapped(_ sender: UIBarButtonItem) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
}
