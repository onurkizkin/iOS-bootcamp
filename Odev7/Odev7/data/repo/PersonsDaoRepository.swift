//
//  PersonsDaoRepository.swift
//  Odev7
//
//  Created by Onur Kızkın on 2.01.2024.
//

import Foundation
import RxSwift

class PersonsDaoRepository {
    
    var personsList = BehaviorSubject<[Persons]>(value: [Persons]())
    
    let db:FMDatabase?
    
    init(){
        let targetPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let databaseURL = URL(fileURLWithPath: targetPath).appendingPathComponent("todo.sqlite")
        db = FMDatabase(path: databaseURL.path)
    }
    
    func save(name: String) {
        db?.open()
        
        do{
            try db!.executeUpdate("INSERT INTO toDos(name) VALUES (?)",
                                  values: [name])
            
        }catch{
            print(error.localizedDescription)
        }
        
        
        db?.close()
    }
    
    func update(name: String,id: Int) {
        db?.open()
        
        do{
            try db!.executeUpdate("UPDATE toDos SET name = ? WHERE id = ?",
                                  values: [name,id])
            
        }catch{
            print(error.localizedDescription)
        }
        
        
        db?.close()
    }
    
    func delete(id: Int) {
        db?.open()
        
        do{
            try db!.executeUpdate("DELETE FROM toDos WHERE id = ?",
                                  values: [id])
            uploadPersons()
        }catch{
            print(error.localizedDescription)
        }
        
        
        db?.close()
    }
    
    func search(searchWord:String) {
        db?.open()
        var list = [Persons]()
        
        do{
            let rs = try db!.executeQuery("SELECT * FROM toDos WHERE name like '%\(searchWord)%'", values: nil)
            
            while rs.next(){
                let person = Persons(id: Int(rs.string(forColumn: "id"))!,
                                   name: rs.string(forColumn: "name"))
                                   
                
                list.append(person)
            }
            
            personsList.onNext(list) //TETİKLEME
        }catch{
            print(error.localizedDescription)
        }
        
        
        db?.close()
    }
    
    func uploadPersons() {

        db?.open()
        var list = [Persons]()
        
        do{
            let rs = try db!.executeQuery("SELECT * FROM toDos", values: nil)
            
            while rs.next(){
                let person = Persons(id: Int(rs.string(forColumn: "id"))!,
                                   name: rs.string(forColumn: "name"))
                
                list.append(person)
            }
            
            personsList.onNext(list) //TETİKLEME
        }catch{
            print(error.localizedDescription)
        }
        
        
        db?.close()
    }
}
