//
//  TabBarController.swift
//  TableViewHomeWork
//
//  Created by Акира on 24.07.2023.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContacts()
    }
    
    func setupContacts() {
        
        guard let firstVC = viewControllers?.first as? ContacsViewController else { return }
        guard let seccondVC = viewControllers?.last as? SecondDetailViewController else { return}
        
        let listOfContacts = Person.getContactList()
        firstVC.contactList = listOfContacts
        seccondVC.infoOfBoy = listOfContacts
    }
     
    
    
}
