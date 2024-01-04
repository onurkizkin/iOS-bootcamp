//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Onur Kızkın on 28.12.2023.
//

import UIKit

class AnaSayfaVC: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    //Leading - Left - Start
    //Trailin - Right - End
    
    
    override func viewDidLoad() { //Uygulama ilk açıldığında çalışır ( 1 kere çalışır)
        super.viewDidLoad()
        labelAnasayfa.text = "Hoşgeldin"
        print("viewDidLoad Çalıştı")
    }
    
    override func viewWillAppear(_ animated: Bool) { // Sayfa her göründüğünde çalışır.
        print("viewWillAppear Çalıştı")
        //Sayfaya geri dönüldüğünde çalışır.
    }
    
    override func viewWillDisappear(_ animated: Bool) { // Sayfa her görünmez olduğunda çalışır.
        print("viewWillDisappear Çalıştı")
    }

    @IBAction func buttonYap(_ sender: Any) {
        labelAnasayfa.text = "Merhaba"
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "Ahmet", yas: 23, boy: 1.78, bekar: true)
        
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metodu çalıştı.")
        
        if segue.identifier == "oyunEkraninaGecis" {
            print("oyunEkraninaGecis çalıştı.")
            
            if let veri = sender as? Kisiler {
                let gidilecekVC = segue.destination as! OyunEkraniVC
                gidilecekVC.kisi = veri
            }
        }
    }
    
    @IBAction func buttonAdd(_ sender: Any) {
        print("Add seçildi")
    }
    
    @IBAction func buttonSave(_ sender: Any) {
        print("Save seçildi")
    }
    
}

