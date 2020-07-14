//
//  UITableViewCellConfigurator.swift
//  CellConfigurator
//
//  Created by Feridun Erbas on 15.07.2020.
//  Copyright © 2020 Feridun Erbas. All rights reserved.
//

import UIKit

protocol UITableViewCellConfigurator {
    func lookUp(cellViewModel: TableCellViewModel) -> UITableViewCell.Type
    func register(tableView: UITableView)
}

extension UITableViewCellConfigurator {
	
    func configure(tableView: UITableView, indexPath: IndexPath, cellViewModel: TableCellViewModel) -> UITableViewCell {
        let type = lookUp(cellViewModel: cellViewModel)
        let id = String(describing: type.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: id, for: indexPath)
        cell.configure(with: cellViewModel)
        return cell
    }

    func register(tableView: UITableView, type: UITableViewCell.Type) {
        let id = String(describing: type)
        let nib = UINib(nibName: id, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: id)
    }
}
