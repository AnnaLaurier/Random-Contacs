//
//  Contact.swift
//  Random Contacs
//
//  Created by Anna Lavrova on 01.03.2024.
//

import Foundation

struct Contact {
    let name: String
    let surname: String
    let number: Int
    let email: String

    var fullName: String {
        name + " " + surname
    }

    static func getContacts() -> [Contact] {
        [
            Contact(
                name: "Bob",
                surname: "Lee",
                number: 384658365,
                email: "vbdfbvjdbvavb@lfv"
            ),
            Contact(
                name: "Robert",
                surname: "See",
                number: 38475,
                email: "ldfgvladgv@lfv"
            ),
            Contact(
                name: "Chak",
                surname: "Gee",
                number: 384658365,
                email: "vbdfbvjdbvavb@lfv"
            )
        ]
    }
}
