//
//  UITableViewCellHeightCalculating.swift
//  CellConfigurator
//
//  Created by Feridun Erbas on 15.07.2020.
//  Copyright © 2020 Feridun Erbas. All rights reserved.
//

import UIKit

protocol UITableViewCellHeightCalculating {
	
    static func calculateHeight(for bounds: CGRect, cellViewModel: Any?) -> CGFloat
    static func estimateHeight(for bounds: CGRect, cellViewModel: Any?) -> CGFloat
	
}

extension UITableViewCell: UITableViewCellHeightCalculating {
	
    @objc class func calculateHeight(for bounds: CGRect, cellViewModel _: Any?) -> CGFloat {
        return min(50, bounds.height)
    }

    @objc class func estimateHeight(for bounds: CGRect, cellViewModel _: Any?) -> CGFloat {
        return min(50, bounds.height)
    }
	
}
