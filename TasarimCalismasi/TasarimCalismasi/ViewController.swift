//
//  ViewController.swift
//  TasarimCalismasi
//
//  Created by Onur Kızkın on 28.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Pizza"
        
        let apperance = UINavigationBarAppearance()
        
        apperance.backgroundColor = UIColor(named: "anaRenk")
        apperance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk1")!,
                                         .font: UIFont(name: "Pacifico-Regular", size: 22)!]
        
        navigationController?.navigationBar.barStyle = .black
        
        navigationController?.navigationBar.standardAppearance = apperance
        navigationController?.navigationBar.compactAppearance = apperance
        navigationController?.navigationBar.scrollEdgeAppearance = apperance
        
    }


}

