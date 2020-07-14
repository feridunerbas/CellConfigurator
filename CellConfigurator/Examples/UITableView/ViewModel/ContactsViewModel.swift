//
//  ContactsViewModel.swift
//  CellConfigurator
//
//  Created by Feridun Erbas on 15.07.2020.
//  Copyright © 2020 Feridun Erbas. All rights reserved.
//

import Foundation

protocol ContactsViewModel: TableSourceViewModel {
	
}

class ContactsViewModelImplementation: ContactsViewModel {
	
	var sections: [TableSection] = []
	var reloadTable: VoidBlock?
	
	init() {
		self.getContacts()
	}
	
	private func getContacts() {
		
		// Simulating the async operation
		DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
			guard let self = self else { return }
			self.processData(contacts: self.createDummyContacts())
		}
	}
	
	private func processData(contacts: [Contact]) {
		self.sections = [
			ContactsSection(contacts: contacts)
		]
		self.reloadTable?()
		
	}
	
	private func createDummyContacts() -> [Contact] {
		[
			Contact(name: "Agent Smith", phone: "+0 (110) 011 1101"),
			Contact(name: "Neo", phone: "+1 (001) 100 0010"),
			Contact(name: "James Bond", phone: "+7 (007) 007 0707")
			
		]
	}
	
}
