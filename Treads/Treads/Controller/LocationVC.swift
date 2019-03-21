//
//  LocationVC.swift
//  Treads
//
//  Created by Ahmad Fatayri on 3/21/19.
//  Copyright © 2019 Ahmad Fatayri. All rights reserved.
//

import UIKit
import MapKit

class LocationVC: UIViewController, MKMapViewDelegate {

    var manager: CLLocationManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager = CLLocationManager()
        manager?.desiredAccuracy = kCLLocationAccuracyBest
        manager?.activityType = .fitness
    }
    
    func checkLocationAuthStatus() {
        if CLLocationManager.authorizationStatus() != .authorizedAlways {
            manager?.requestWhenInUseAuthorization()    
        }
    }
    
}
