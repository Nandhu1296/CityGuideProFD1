//
//  EditContactsViewController.swift
//  editContact
//
//  Created by wh-308 on 4/18/23.
//

import UIKit

class EditContactsViewController: UIViewController, UITableViewDataSource {
    
    // Your array of contacts
    var contacts: [Contact] = []
    
    // MARK: - UITableViewDataSource methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // We only need one section
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // The number of rows should be equal to the number of contacts
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a reusable cell from the table view
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        
        // Get the contact for this row
        let contact = contacts[indexPath.row]
        
        // Set the cell's text label to the contact's name
        cell.textLabel?.text = contact.name
        
        // If this contact is marked as default, add a checkmark to the cell
        if contact.isDefault {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        
        return cell
    }
}
