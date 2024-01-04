//
//  ViewController.swift
//  TabBarKullanimi
//
//  Created by Onur Kızkın on 29.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabItems = tabBarController?.tabBar.items {
            let anasayfaItem = tabItems[0]
            let ayarlarItem = tabItems[1]
            anasayfaItem.badgeValue = "3"
            ayarlarItem.badgeValue = "Yeni"
        }
        
        let apperance = UITabBarAppearance()
        apperance.backgroundColor = UIColor.systemIndigo
        
        renkDegistir(itemApperance: apperance.stackedLayoutAppearance)
        renkDegistir(itemApperance: apperance.inlineLayoutAppearance)
        renkDegistir(itemApperance: apperance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = apperance
        tabBarController?.tabBar.scrollEdgeAppearance = apperance
    }

    func renkDegistir (itemApperance: UITabBarItemAppearance) {
        //Seçili durum
        itemApperance.selected.iconColor = UIColor.systemOrange
        itemApperance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemOrange]
        itemApperance.selected.badgeBackgroundColor = UIColor.systemMint
        //Seçili olmayan durum
        itemApperance.normal.iconColor = UIColor.white
        itemApperance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        itemApperance.normal.badgeBackgroundColor = UIColor.lightGray
    }
    

}

