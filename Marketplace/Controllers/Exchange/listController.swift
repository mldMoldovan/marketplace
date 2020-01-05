//
//  listController.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit



class listController:XTController{
    
    
    var vid:[user] = [
    
    
    ]
    
    let table:UITableView = {
        
        let t = UITableView(frame: .zero, style: .grouped)
        t.separatorStyle = .none
        t.backgroundColor = .clear
        t.backgroundView = nil
        t.tag = 2277
        
        return t
        
    }()
    
    
    override func ignition() {
        
        core.fillUsers()
        vid = core.users
        
        addTableDelegate([table])
        view.addSubview(table)
        table.fillSuperview()
        
        setBackground(image: core.man.img("bkg"), nil)
        
        addBar(.back)
    }
    
}


extension listController:UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vid.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let c = UITableViewCell()
        c.tag = indexPath.row + 1
        c.backgroundColor = .clear
        
        let b = UIView()
        b.backgroundColor = core.man.color("almost_green")
        c.selectedBackgroundView = b
        
        //let u = userView(vid[indexPath.row], nil)
        let u = userCell(vid[indexPath.row])
        
        
        c.addSubview(u)
        u.fillSuperview()
        
        
        
        return c
    }
    
    
}
