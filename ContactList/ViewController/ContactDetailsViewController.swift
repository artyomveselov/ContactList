//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Артём Веселов on 02.03.2023.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet weak var fullNameTitle: UINavigationItem!
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var emailAdress: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameTitle.title = "\(contact.name) \(contact.surname)"
        phoneNumber.text = "+7\(contact.phone)"
        emailAdress.text = contact.email
    }
}
