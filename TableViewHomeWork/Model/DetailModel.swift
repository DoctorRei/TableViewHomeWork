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




