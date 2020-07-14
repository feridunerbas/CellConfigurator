//
//  TableSourceViewModel.swift
//  CellConfigurator
//
//  Created by Feridun Erbas on 15.07.2020.
//  Copyright © 2020 Feridun Erbas. All rights reserved.
//

import Foundation

typealias VoidBlock = () -> Void

protocol TableSourceViewModel {
	
    var sections: [TableSection] { get }
    var reloadTable: VoidBlock? { get set }
	
}

extension TableSourceViewModel {
	
    func numberOfRows(in section: Int) -> Int {
        return sections[section].cellViewModels.count
    }

    var numberOfSections: Int {
        return sections.count
    }

    func cellViewModel(at indexPath: IndexPath) -> TableCellViewModel {
        return sections[indexPath.section].cellViewModels[indexPath.row]
    }
	
}
