//
//  Filmler.swift
//  FilmlerApp
//
//  Created by Onur Kızkın on 30.12.2023.
//

import Foundation

class Filmler {
    var id: String?
    var ad: String?
    var resim: String?
    var fiyat: Int?
    
    init(){
        
    }
    
    internal init(id: String, ad: String, resim: String, fiyat: Int) {
        self.id = id
        self.ad = ad
        self.resim = resim
        self.fiyat = fiyat
    }
}