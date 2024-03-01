//
//  ContactListViewController.swift
//  Random Contacs
//
//  Created by Anna Lavrova on 01.03.2024.
//

import UIKit

class ContactListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    private var contacts: [Contact] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self

        getContacts()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)

        let viewController = segue.destination as? ContactDetailsViewController
        if let index = tableView.indexPathForSelectedRow?.row {
            viewController?.contact = contacts[index]
        }
    }

    private func getContacts() {
        contacts = [
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

extension ContactListViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contact = contacts[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName

        cell.contentConfiguration = content

        return cell
    }
}
