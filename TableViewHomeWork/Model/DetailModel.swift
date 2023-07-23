//
//  DetailModel.swift
//  TableViewHomeWork
//
//  Created by Акира on 23.07.2023.
//

struct Person {
    
    var name: String
    var seccondName: String
    
    var email: String
    var phoneNumber: String
    
    var fullName: String {
        
        " \(name) \(seccondName ) "
        
    }
    
    static func getContactList() -> [Person] {
        [
            Person(name: DataStore().name.randomElement() ?? "",
                   seccondName: DataStore().seccondName.randomElement() ?? "",
                   email: DataStore().email.randomElement() ?? "",
                   phoneNumber: DataStore().phoneNumber.randomElement() ?? ""),
            
            Person(name: DataStore().name.randomElement() ?? "",
                   seccondName: DataStore().seccondName.randomElement() ?? "",
                   email: DataStore().email.randomElement() ?? "",
                   phoneNumber: DataStore().phoneNumber.randomElement() ?? ""),
            
            Person(name: DataStore().name.randomElement() ?? "",
                   seccondName: DataStore().seccondName.randomElement() ?? "",
                   email: DataStore().email.randomElement() ?? "",
                   phoneNumber: DataStore().phoneNumber.randomElement() ?? ""),
            
            Person(name: DataStore().name.randomElement() ?? "",
                   seccondName: DataStore().seccondName.randomElement() ?? "",
                   email: DataStore().email.randomElement() ?? "",
                   phoneNumber: DataStore().phoneNumber.randomElement() ?? ""),
            
            Person(name: DataStore().name.randomElement() ?? "",
                   seccondName: DataStore().seccondName.randomElement() ?? "",
                   email: DataStore().email.randomElement() ?? "",
                   phoneNumber: DataStore().phoneNumber.randomElement() ?? "")
         ]
    }
    
    
}

struct DataStore {
    
    var name = ["Brian", "David", "Dave", "Rick", "Freddy"]
    var seccondName = ["Molko", "Bowie", "Ghan", "Ronson", "Mercury"]
    
    var email = [ "BrianMolko@placebo.com",
                 "DavidBowie@spidersfrommars.sex",
                 "DaveGhan@depechemode.com",
                 "RickRonson@soloplayer.com",
                 "FreddyMercury@queen.com" ]
    
    var phoneNumber = [ "123-456-7890",
                        "987-654-3210",
                        "555-555-5555",
                        "111-222-3333",
                        "999-888-7777" ]
    
    
}


