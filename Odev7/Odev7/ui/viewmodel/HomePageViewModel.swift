//
//  HomePageViewModel.swift
//  Odev7
//
//  Created by Onur Kızkın on 2.01.2024.
//

import Foundation
import RxSwift

class HomePageViewModel {
    var krepo = PersonsDaoRepository()
    var personsList = BehaviorSubject<[Persons]>(value: [Persons]())
    
    init(){
        copyDatabase()
        personsList = krepo.personsList
        uploadPersons()
    }
    
    func delete(id: Int) {
        krepo.delete(id: id)
    }
    
    func search(searchWord :String) {
        krepo.search(searchWord: searchWord)
    }
    
    func uploadPersons() {
        krepo.uploadPersons()
    }
    
    func copyDatabase() {
        let bundleWay = Bundle.main.path(forResource: "todo", ofType: ".sqlite")
        let targetPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let copyDestination = URL(fileURLWithPath: targetPath).appendingPathComponent("todo.sqlite")
        let fileManager = FileManager.default
        if fileManager.fileExists(atPath: copyDestination.path) {
            print("Database already exists")
        } else {
            do{
                try fileManager.copyItem(atPath: bundleWay!, toPath: copyDestination.path)
            }catch{}
        }
    }
}
