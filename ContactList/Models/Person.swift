//
//  Contact.swift
//  ContactList
//
//  Created by Артём Веселов on 02.03.2023.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: Int
    
    static func getPersonList() -> [Person] {
        generatePersonList()
    }
}

class DataStore {
    var names = ["Maggie", "Shelby", "Homer", "Major", "Mallory", "Jc", "Lorene", "Irvin", "Marlon", "Cecile", "Dmitriy", "Lyudmila", "Andrey", "Timofey", "Svetlana"]
    var surnames = ["Dunn", "Bush", "George", "Lyons", "Jarvis", "Harper", "Horne", "Carpenter", "Obrien", "Cervantes", "Veselov", "Dunkun", "Crosby", "Vishenkin", "Maxvalyutin"]
    var emails = ["ranch@gmail.com", "lemon@icloud.com", "prize@yandex.ru", "drive@mail.ru", "pitch@outlook.com", "popcorn@icloud.com", "knife@icloud.com", "village@gmail.com", "shape@yandex.ru", "kingdom@gmail.com", "differnt@mail.ru", "sarahconner@icloud.com", "dinosaur@mail.ru", "swantyswantyson@icloud.com", "johntimberlake@outlook.com"]
}

func generatePersonList() -> [Person] {
    var contactBook: [Person] = []

    for _ in 1...15 {
        let personList = Person(
            name: DataStore().names.randomElement() ?? "",
            surname: DataStore().surnames.randomElement() ?? "",
            email: DataStore().emails.randomElement() ?? "",
            phone: Int.random(in: 1000000000...9999999999)
        )
        
        if let i = DataStore().names.firstIndex(of: personList.name) {
            DataStore().names.remove(at: i)
        }
        
        if let i = DataStore().surnames.firstIndex(of: personList.surname) {
            DataStore().surnames.remove(at: i)
        }
        
        if let i = DataStore().emails.firstIndex(of: personList.name) {
            DataStore().emails.remove(at: i)
        }
        
        contactBook.append(personList)
    }
    
    return contactBook
}






