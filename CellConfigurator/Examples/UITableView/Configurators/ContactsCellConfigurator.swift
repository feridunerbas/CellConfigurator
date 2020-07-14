//
//  ContactsCellConfigurator.swift
//  CellConfigurator
//
//  Created by Feridun Erbas on 15.07.2020.
//  Copyright © 2020 Feridun Erbas. All rights reserved.
//

import UIKit

protocol ContactsCellConfigurator: UITableViewCellConfigurator {}

class ContactsCellConfiguratorImplementation: ContactsCellConfigurator {
	
	func lookUp(cellViewModel: TableCellViewModel) -> UITableViewCell.Type {
		switch cellViewModel.self {
		case is ContactCellViewModel:
			return ContactCell.self
		default:
			fatalError("\(cellViewModel.self) is not registered")
		}
	}
	
	func register(tableView: UITableView) {
		register(tableView: tableView, type: ContactCell.self)
	}
	
}
