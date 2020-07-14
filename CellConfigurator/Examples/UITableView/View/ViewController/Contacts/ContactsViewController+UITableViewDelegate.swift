//
//  ContactsViewController+UITableViewDelegate.swift
//  CellConfigurator
//
//  Created by Feridun Erbas on 15.07.2020.
//  Copyright © 2020 Feridun Erbas. All rights reserved.
//

import UIKit

extension ContactsViewController: UITableViewDelegate {
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		let cellViewModel = viewModel.cellViewModel(at: indexPath)
		return cellConfigurator.lookUp(cellViewModel: cellViewModel).calculateHeight(for: tableView.bounds, cellViewModel: cellViewModel)
	}
	
	func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
		let cellViewModel = viewModel.cellViewModel(at: indexPath)
		return cellConfigurator.lookUp(cellViewModel: cellViewModel).estimateHeight(for: tableView.bounds, cellViewModel: cellViewModel)
		
	}
}
