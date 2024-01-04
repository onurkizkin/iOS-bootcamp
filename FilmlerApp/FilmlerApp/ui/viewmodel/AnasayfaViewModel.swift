//
//  AnasayfaViewModel.swift
//  FilmlerApp
//
//  Created by Onur Kızkın on 1.01.2024.
//

import Foundation
import RxSwift

class AnasayfaViewModel {
    
    var frepo = FilmlerDaoRepository()
    var filmlerListesi = BehaviorSubject<[Filmler]>(value: [Filmler]())
    
    init() {
        filmlerListesi = frepo.filmlerListesi
        filmleriYukle()
    }
    
    func filmleriYukle() {
        frepo.filmleriYukle()
    }
}
