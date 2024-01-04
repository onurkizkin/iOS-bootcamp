//
//  ViewController.swift
//  MVVMKullanimi
//
//  Created by Onur Kızkın on 31.12.2023.
//

import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var textFiledSayi1: UITextField!
    @IBOutlet weak var textFiledSayi2: UITextField!
    
    var viewModel = AnasayfaViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = viewModel.sonuc.subscribe(onNext: {s in // Dinleme
            self.labelSonuc.text = s
        })
    }

    @IBAction func buttonToplama(_ sender: Any) {
        if let alinanSayi1 = textFiledSayi1.text, let alinanSayi2 = textFiledSayi2.text {
            viewModel.toplamaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
            
        }
    }
    
    @IBAction func buttonCarpma(_ sender: Any) {
        if let alinanSayi1 = textFiledSayi1.text, let alinanSayi2 = textFiledSayi2.text {
            viewModel.carpmaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
            
        }
    }
    
    
}

