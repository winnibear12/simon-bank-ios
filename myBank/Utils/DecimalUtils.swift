//
//  DecimalUtils.swift
//  myBank
//
//  Created by Simon Lee on 2023-05-29.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
