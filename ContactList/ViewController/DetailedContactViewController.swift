//
//  TableViewController.swift
//  ContactList
//
//  Created by Артём Веселов on 02.03.2023.
//

import UIKit

class DetailedContactViewController: UITableViewController {
   
    private var contactList = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - UITableViewDataSource
extension DetailedContactViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        let contactUser = contactList[indexPath.section]
        
        
        switch indexPath.row {
          case 0:
            content.text = "+\(contactUser.phone)"
            content.image = UIImage(systemName: "phone")
          default:
            content.text = "\(contactUser.email)"
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection
                            section: Int) -> String? {
        let contactHeader = contactList
        
        return "\(contactHeader[section].name) \(contactHeader[section].surname)"
    }
}
