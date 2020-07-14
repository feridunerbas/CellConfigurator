//
//  ContactCellViewModel.swift
//  CellConfigurator
//
//  Created by Feridun Erbas on 15.07.2020.
//  Copyright © 2020 Feridun Erbas. All rights reserved.
//

import Foundation

protocol ContactCellViewModel: TableCellViewModel {
	
	var name: String? { get }
	var phone: String? { get }
	
}

class ContactCellViewModelImplementation: ContactCellViewModel {
	
	var name: String?
	var phone: String?
	
	init(contact: Contact) {
		self.name = contact.name
		self.phone = contact.phone
	}
	
}
