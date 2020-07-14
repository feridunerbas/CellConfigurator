//
//  TableSection.swift
//  CellConfigurator
//
//  Created by Feridun Erbas on 15.07.2020.
//  Copyright © 2020 Feridun Erbas. All rights reserved.
//

import Foundation

class TableSection {
	
    var cellViewModels: [TableCellViewModel]

    init(cellViewModels: [TableCellViewModel]) {
        self.cellViewModels = cellViewModels
    }
}
