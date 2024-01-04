//
//  ViewController.swift
//  Odev6
//
//  Created by Onur Kızkın on 1.01.2024.
//

import UIKit



class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {


    @IBOutlet weak var menulerCollectionView: UICollectionView!
    
    var menulerListe = [Menuler]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "getir"
        
        let apperance = UINavigationBarAppearance()
        
        apperance.backgroundColor = UIColor(named: "anaRenk")
        apperance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk")!,
                                         .font: UIFont(name: "Poppins-BoldItalic", size: 22)!]
        navigationController?.navigationBar.standardAppearance = apperance
        navigationController?.navigationBar.compactAppearance = apperance
        navigationController?.navigationBar.scrollEdgeAppearance = apperance
        
        
        menulerCollectionView.delegate = self
        menulerCollectionView.dataSource = self
        
        let m1 = Menuler(ad: "Su & İçecek", resim: "suAndIcecek")
        let m2 = Menuler(ad: "Meyve & Sebze", resim: "meyveAndSebze")
        let m3 = Menuler(ad: "Fırından", resim: "firindan")
        let m4 = Menuler(ad: "Süt Ürünleri", resim: "sutUrunleri")
        let m5 = Menuler(ad: "Atıştırmalık", resim: "atistirmalik")
        let m6 = Menuler(ad: "Dondurma", resim: "dondurma")
        let m7 = Menuler(ad: "Temel Gıda", resim: "temelGida")
        let m8 = Menuler(ad: "Kahvaltılık", resim: "kaahvaltilik")
        let m9 = Menuler(ad: "Yiyecek", resim: "yiyecek")
        let m10 = Menuler(ad: "Fit & Form", resim: "fitAndForm")
        let m11 = Menuler(ad: "Kişisel Bakım", resim: "kisiselBakim")
        let m12 = Menuler(ad: "Ev Bakım", resim: "evBakim")
        let m13 = Menuler(ad: "Ev & Yaşam", resim: "evAndYasam")
        let m14 = Menuler(ad: "Teknoloji", resim: "teknoloji")
        let m15 = Menuler(ad: "Evcil Hayvan", resim: "evcilHayvan")
        let m16 = Menuler(ad: "Bebek", resim: "bebek")
        let m17 = Menuler(ad: "Cinsel Sağlık", resim: "cinselSaglik")
        menulerListe.append(m1)
        menulerListe.append(m2)
        menulerListe.append(m3)
        menulerListe.append(m4)
        menulerListe.append(m5)
        menulerListe.append(m6)
        menulerListe.append(m7)
        menulerListe.append(m8)
        menulerListe.append(m9)
        menulerListe.append(m10)
        menulerListe.append(m11)
        menulerListe.append(m12)
        menulerListe.append(m13)
        menulerListe.append(m14)
        menulerListe.append(m15)
        menulerListe.append(m16)
        menulerListe.append(m17)
        
        
        let tasarim = UICollectionViewFlowLayout()
        
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        
        let ekranGenislik = UIScreen.main.bounds.width
        let itemGenislik = (ekranGenislik-30) / 4
        
        tasarim.itemSize = CGSize(width: itemGenislik, height: itemGenislik)
        
        menulerCollectionView.collectionViewLayout = tasarim
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        menulerListe.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let menu = menulerListe[indexPath.row]
        
        let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "menulerHucre", for: indexPath) as! MenulerHucre
        
        hucre.imageViewMenu.image = UIImage(named: menu.resim!)
        hucre.labelMenuAd.text = "\(menu.ad!) !"
        
        
        
        hucre.layer.borderColor = UIColor.white.cgColor
        hucre.layer.borderWidth = 0.3
        hucre.layer.cornerRadius = 10.0
        
        hucre.indexPath = indexPath
        
        return hucre
        
    }
    
    
    
}

