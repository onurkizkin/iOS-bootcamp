//
//  ViewController.swift
//  Odev5
//
//  Created by Onur Kızkın on 30.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sonucTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonYedi(_ sender: Any) {
        sonucTextField.text = sonucTextField.text! + "7"
    }
    @IBAction func buttonSekiz(_ sender: Any) {
        sonucTextField.text = sonucTextField.text! + "8"
    }
    @IBAction func buttonDokuz(_ sender: Any) {
        sonucTextField.text = sonucTextField.text! + "9"
    }
    @IBAction func buttonDort(_ sender: Any) {
        sonucTextField.text = sonucTextField.text! + "4"
    }
    @IBAction func buttonBes(_ sender: Any) {
        sonucTextField.text = sonucTextField.text! + "5"
    }
    @IBAction func buttonAlti(_ sender: Any) {
        sonucTextField.text = sonucTextField.text! + "6"
    }
    @IBAction func buttonBir(_ sender: Any) {
        sonucTextField.text = sonucTextField.text! + "1"
    }
    @IBAction func buttonIki(_ sender: Any) {
        sonucTextField.text = sonucTextField.text! + "2"
    }
    @IBAction func buttonUc(_ sender: Any) {
        sonucTextField.text = sonucTextField.text! + "3"
    }
    @IBAction func buttonArti(_ sender: Any) {
        sonucTextField.text = sonucTextField.text! + "+"
    }
    @IBAction func buttonEsittir(_ sender: Any) {
       
        let sayilar = sonucTextField.text?.split(separator: "+")
        
        let intSayilar = sayilar!.compactMap { Int($0) }
        
            var toplam = 0
            
        for sayi in intSayilar {
            toplam += sayi
        }
        
        sonucTextField.text = String(toplam)
        
    }
    
    @IBAction func buttonTemizle(_ sender: Any) {
        sonucTextField.text?.removeAll()
    }
    
}

