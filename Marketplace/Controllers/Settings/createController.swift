//
//  createController.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit

enum createType{
    
    case choose, user, wallet, market, rating, item
    
}


class createController:XTController{
    
    var type:createType = .choose
    
    var choose_items = [
    
        "user",
        "wallet",
        "market",
        "rating",
        "item"
    
    ]
    
    
    override func ignition() {
        setBackground(image: core.man.img("bkg"), nil)
    }
    
    convenience init(_ type: createType) {
        self.init()
        self.type = type
    }
    
}


extension createController:UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var s = 0
        
        switch type {
            case .choose:
                s = choose_items.count
            default:
                s = 0
            
        }
        
        return s
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let c = UITableViewCell()
        
        switch type {
            case .choose:
               
               let l = UILabel()
               l.text = choose_items[indexPath.row]
               l.textColor = .green
               l.textAlignment = .center
               l.font = UIFont(name: "Helvetica", size: 18)
               l.backgroundColor = UIColor.black.withAlphaComponent(0.5)
            
               c.addSubview(l)
               l.fillSuperview()
               
            default:
               print("Moo")
        }
        
        
        return c
    }
    
    
    
    
}
