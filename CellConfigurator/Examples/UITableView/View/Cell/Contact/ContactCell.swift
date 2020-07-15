//
//  ContactCell.swift
//  CellConfigurator
//
//  Created by Feridun Erbas on 15.07.2020.
//  Copyright © 2020 Feridun Erbas. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {
	
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var phoneLabel: UILabel!
	
	private var viewModel: ContactCellViewModel?

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

	override func configure(with cellViewModel: Any?) {
		self.viewModel = cellViewModel as? ContactCellViewModel
		self.nameLabel.text = viewModel?.name
		self.phoneLabel.text = viewModel?.phone
	}
	
	override static func estimateHeight(for bounds: CGRect, cellViewModel: Any?) -> CGFloat {
		return 40
	}
	
	override static func calculateHeight(for bounds: CGRect, cellViewModel: Any?) -> CGFloat {
		return UITableView.automaticDimension
	}
    
}
