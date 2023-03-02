//
//  TableViewController.swift
//  ContactList
//
//  Created by Артём Веселов on 02.03.2023.
//

import UIKit

class ContactListViewController: UITableViewController {
   
    private var contactList = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
// MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? ContactDetailsViewController
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        detailsVC?.contact = contactList[indexPath.row]
    }
}

// MARK: - UITableViewDataSource
extension ContactListViewController {
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      contactList.count
  }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        let contactUser = contactList[indexPath.row]
        
        content.text = "\(contactUser.name) \(contactUser.surname)"
        
        cell.contentConfiguration = content
        
        return cell
    }
}
