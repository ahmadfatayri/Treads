//
//  Location.swift
//  Treads
//
//  Created by Ahmad Fatayri on 3/26/19.
//  Copyright © 2019 Ahmad Fatayri. All rights reserved.
//

import Foundation
import RealmSwift

class Location: Object {
    @objc dynamic public private(set) var latitude = 0.0
    @objc dynamic public private(set) var longitude = 0.0
    
    convenience init(latitude: Double, longitude: Double){
        self.init()
        self.latitude = latitude
        self.longitude = longitude
    }
}
