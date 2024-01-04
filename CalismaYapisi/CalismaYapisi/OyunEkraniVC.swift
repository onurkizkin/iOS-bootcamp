//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by Onur Kızkın on 28.12.2023.
//

import UIKit

class OyunEkraniVC: UIViewController {

    var kisi: Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            print("---------OyunEkraniVC---------")
            print("Kisi ad    : \(k.ad!)")
            print("Kisi yaş   : \(k.yas!)")
            print("Kisi boy   : \(k.boy!)")
            print("Kisi bekar : \(k.bekar!)")
        }
    }

    @IBAction func buttonBitir(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
        
    }
    
    @IBAction func buttonGeri(_ sender: Any) {
        //navigationController?.popViewController(animated: true)  //Bir önceki sayfaya dönüş
        navigationController?.popToRootViewController(animated: true) //Anasayfaya dönüş
    }
    
}
