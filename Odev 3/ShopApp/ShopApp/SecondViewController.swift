//
//  SecondViewController.swift
//  ShopApp
//
//  Created by Onur Kızkın on 29.12.2023.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Phone"
        
        let apperance = UINavigationBarAppearance()
        
        apperance.backgroundColor = UIColor(named: "anaRenk")
        apperance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk1")!, .font: UIFont(name: "Carattere-Regular", size: 25)!]
            }
    

}
