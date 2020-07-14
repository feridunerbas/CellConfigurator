//
//  UITableViewCellConfigurable.swift
//  CellConfigurator
//
//  Created by Feridun Erbas on 15.07.2020.
//  Copyright © 2020 Feridun Erbas. All rights reserved.
//

import UIKit

protocol UITableViewCellConfigurable: class {
    func configure(with: Any?)
}

extension UITableViewCell: UITableViewCellConfigurable {
	
	@objc func configure(with _: Any?) {}
	
}
