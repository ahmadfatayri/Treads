//
//  Extensions.swift
//  Treads
//
//  Created by Ahmad Fatayri on 3/21/19.
//  Copyright © 2019 Ahmad Fatayri. All rights reserved.
//

import Foundation

extension Double {
    func metersToMiles(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return ((self / 1609.34) * divisor).rounded() / divisor
    }
}
