//
//  PersonDetailViewModel.swift
//  Odev7
//
//  Created by Onur Kızkın on 2.01.2024.
//

import Foundation

class PersonDetailViewModel {
    var krepo = PersonsDaoRepository()
    
    func update(name:String, id:Int) {
        krepo.update(name: name, id: id)
    }
}
