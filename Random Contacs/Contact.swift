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
}
