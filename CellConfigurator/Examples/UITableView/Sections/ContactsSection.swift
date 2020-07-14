//
//  ContactsSection.swift
//  CellConfigurator
//
//  Created by Feridun Erbas on 15.07.2020.
//  Copyright © 2020 Feridun Erbas. All rights reserved.
//

import Foundation

class ContactsSection: TableSection {
	
	init(contacts: [Contact]) {
		
		let cellViewModels = contacts.map { ContactCellViewModelImplementation(contact: $0) }
		super.init(cellViewModels: cellViewModels)
		
	}
	
}
