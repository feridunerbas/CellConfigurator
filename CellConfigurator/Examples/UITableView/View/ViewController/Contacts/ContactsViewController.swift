//
//  ContactsViewController.swift
//  CellConfigurator
//
//  Created by Feridun Erbas on 15.07.2020.
//  Copyright © 2020 Feridun Erbas. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController {

	@IBOutlet weak var tableView: UITableView!
	
	var viewModel: ContactsViewModel = ContactsViewModelImplementation()
	var cellConfigurator: ContactsCellConfigurator = ContactsCellConfiguratorImplementation()
	
	override func viewDidLoad() {
        super.viewDidLoad()
		self.setupTableView()
    }

	private func setupTableView() {
		self.cellConfigurator.register(tableView: tableView)
		self.tableView.delegate = self
		self.tableView.dataSource = self
	}
	
}
