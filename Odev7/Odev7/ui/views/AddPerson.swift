//
//  AddPerson.swift
//  Odev7
//
//  Created by Onur Kızkın on 2.01.2024.
//

import UIKit

class AddPerson: UIViewController {
    @IBOutlet weak var tfName: UITextField!
    var viewModel = AddPersonViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonSave(_ sender: Any) {
        if let ka = tfName.text{
            viewModel.save(name: ka)
        }

    }
}
