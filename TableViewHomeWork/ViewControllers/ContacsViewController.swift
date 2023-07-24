//
//  ContacsViewController.swift
//  TableViewHomeWork
//
//  Created by Акира on 23.07.2023.
//

import UIKit

class ContacsViewController: UITableViewController {

    var contactList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let person = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        guard let selectedContact = tableView.indexPathForSelectedRow else { return }
        detailsVC.personInfo = contactList[selectedContact.row]
                            
    }
}
