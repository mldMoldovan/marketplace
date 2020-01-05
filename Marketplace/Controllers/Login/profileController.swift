//
//  profileController.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit



class profileController:XTController{
    
    
    var vid:[rating] = [
    
    ]

    
    override func ignition() {
        setBackground(image: core.man.img("bkg"), nil)
    }
    
    
}




// MARK: X



extension profileController:UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections() -> Int{
        
        return 2
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var i = 0
        
        if section == 1{
            i = vid.count
        }
        
        return i
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        if indexPath.section == 0{
            
            // user profile
            
        } else if indexPath.section == 1{
            
            // rating
            
        }
        
        
        return cell
    }
    
    
    
    
    
}
