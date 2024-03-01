//
//  ContactDetailsViewController.swift
//  Random Contacs
//
//  Created by Anna Lavrova on 01.03.2024.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!

    var contact: Contact?

    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = contact?.email
        navigationItem.title = contact?.fullName
    }

}
