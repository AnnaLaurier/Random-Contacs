//
//  ContactDetailsViewController.swift
//  Random Contacs
//
//  Created by Anna Lavrova on 01.03.2024.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!

    var contact: Contact?

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = contact?.fullName
        emailLabel.text = contact?.email
        numberLabel.text = String(contact?.number ?? 0)
    }

}
