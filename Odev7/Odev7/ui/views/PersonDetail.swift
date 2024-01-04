//
//  PersonDetail.swift
//  Odev7
//
//  Created by Onur Kızkın on 2.01.2024.
//

import UIKit

class PersonDetail: UIViewController {
    @IBOutlet weak var tfName: UITextField!
    
    var person:Persons?
    var viewModel = PersonDetailViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let p = person{
            tfName.text = p.name
        }
    }

    @IBAction func buttonUpdate(_ sender: Any) {
        if let ka = tfName.text, let p = person {
            viewModel.update(name: ka, id: p.id!)
        }
    }
}
