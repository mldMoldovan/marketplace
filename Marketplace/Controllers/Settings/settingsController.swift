//
//  settingsController.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit



class settingsController:XTController{
    
    let data = [
    
        ["Booleans" , "Version"],
        [
            "debug",
            "logs"
        
        ],
    
    ]
    
    

    
    override func ignition(){
        
        setBackground(image: core.man.img("bkg"), nil)
        
    }
    
    
}





extension settingsController:UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var v = UIView()
        
        if section == 0{
            let l = UILabel()
            l.text = data[0][0]
            l.textColor = .white
            l.textAlignment = .left
            l.font = UIFont(name: "Helvetica", size: 23)
            l.padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
            v = l
        }
        
        return v
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section + 1].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        return cell
    }
    
    
    
    
    
}
