//
//  mapController.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit
import MapKit


class mapController:XTController{
    
    
    let lm = CLLocationManager()
    
    
    let map:MKMapView = {
        
        let m = MKMapView()
        
        
        
        return m
        
    }()
    
    
    
    func permission(){
        
        lm.delegate = self
        
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            lm.startUpdatingLocation()
        } else {
            lm.requestWhenInUseAuthorization()
            lm.startUpdatingLocation()
        }
        
    }
    
    
    
    
    override func ignition() {
        
        permission()
        
        setBackground(image: core.man.img("bkg"), nil)
        
        addBar(.back)
    }
    

    
    
}




// MARK: X



extension mapController:MKMapViewDelegate{
    
    
    
    
}


extension mapController:CLLocationManagerDelegate{
    
    
    
}


