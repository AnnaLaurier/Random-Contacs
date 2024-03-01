//
//  InformationViewController.swift
//  Random Contacs
//
//  Created by Anna Lavrova on 01.03.2024.
//

import UIKit

class InformationViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    private var contacts: [Contact] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self

        getContacts()
        navigationController?.navigationBar.backgroundColor = .white
    }

    private func getContacts() {
        contacts = Contact.getContacts()
    }
}

extension InformationViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contact = contacts[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "informationID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = indexPath.row == 0 ? contact.email : String(contact.number)
        content.image = UIImage(systemName: indexPath.row == 0 ? "envelope" : "phone")

        cell.contentConfiguration = content

        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let contact = contacts[section]

        return contact.fullName
    }
}

extension InformationViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        30
    }
}
