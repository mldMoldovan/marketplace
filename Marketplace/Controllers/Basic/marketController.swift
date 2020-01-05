//
//  marketController.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit



class marketController:XTController{
    
    var marketplace:market?
    
    var vid:[market] = [
    
    ]
    
    
    let table:UITableView = {
        
        let t = UITableView(frame: .zero, style: .grouped)
        t.separatorStyle = .none
        t.backgroundColor = .clear
        t.backgroundView = UIImageView(image: core.man.img("bkg"))
        
        return t
        
    }()
    
    
    func fillVoid(_ vid: [market]){
        
        self.vid = vid
        
    }

    
    override func ignition() {
        
        
        
        addTableDelegate([table])
        view.addSubview(table)
        table.fillSuperview()
        
        
        setBackground(image: core.man.img("bkg"), nil)
        
        addBar(.back)
        
    }
    
    
}





// MARK: X




extension marketController:UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vid.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let c = UITableViewCell()
        c.tag = indexPath.row + 1
        c.backgroundColor = .clear
        
        
        let m = marketCell(vid[indexPath.row])
        
        
        c.addSubview(m)
        m.fillSuperview()
        
        
        return c
    }
    
    
    
    
    
}
