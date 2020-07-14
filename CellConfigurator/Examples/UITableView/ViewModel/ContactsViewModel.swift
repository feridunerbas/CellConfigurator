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
	
}
