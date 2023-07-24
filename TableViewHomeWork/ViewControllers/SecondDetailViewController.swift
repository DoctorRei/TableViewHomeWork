//
//  SecondDetailViewController.swift
//  TableViewHomeWork
//
//  Created by Акира on 23.07.2023.
//

import UIKit

class SecondDetailViewController: UITableViewController {

    var infoOfBoy: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.allowsFocus.toggle()
        tableView.allowsSelection.toggle()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        infoOfBoy.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        infoOfBoy.count / 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        infoOfBoy[section].fullName 
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailInfo", for: indexPath)
        let person = infoOfBoy[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
        default:
            content.text = person.email
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    
    

}

