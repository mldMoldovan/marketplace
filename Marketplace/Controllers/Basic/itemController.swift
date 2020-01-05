//
//  itemController.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit



class itemController:XTController{
    
    var form:market?
    
    var vid:[item] = [
    
    
    ]
    
    let table:UITableView = {
        
        let t = UITableView(frame: .zero, style: .grouped)
        t.separatorStyle = .none
        t.backgroundColor = .clear
        t.backgroundView = UIImageView(image: core.man.img("bkg"))
        t.tag = 2277
        
        return t
        
    }()
    
    
    // MARK : VOID
    
    func fillVoid(_ vid: [item]){
        
        self.vid = vid
        
    }
    
    
    // MARK : FORM INIT
    
    convenience init(_ form: market) {
        self.init()
        self.form = form
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



extension itemController:UITableViewDelegate, UITableViewDataSource{
    
    
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
        
        let i = itemCell(vid[indexPath.row])
        
        c.addSubview(i)
        i.fillSuperview()
        
        
        return c
    }
    
    
    
    
    
}
