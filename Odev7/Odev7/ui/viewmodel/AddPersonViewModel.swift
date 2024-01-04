//
//  AddPersonViewModel.swift
//  Odev7
//
//  Created by Onur Kızkın on 2.01.2024.
//

import Foundation

class AddPersonViewModel {
    var krepo = PersonsDaoRepository()
    
    func save(name: String) {
        krepo.save(name: name)
    }
}
