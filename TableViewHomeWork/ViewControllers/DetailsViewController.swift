//
//  DetailsViewController.swift
//  TableViewHomeWork
//
//  Created by Акира on 23.07.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var personInfo: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = personInfo.fullName
        fullNameLabel.text = personInfo.fullName
        phoneLabel.text = personInfo.phoneNumber
        emailLabel.text = personInfo.email
        
    }
    



}
