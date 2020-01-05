//
//  debugController.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit
import Firebase



class debugController:XTController{
    
    
    let table:UITableView = {
        
        let t = UITableView(frame: .zero, style: .grouped)
        t.separatorStyle = .none
        t.backgroundColor = .clear
        t.backgroundView = UIImageView(image: core.man.img("bkg"))
        
        
        return t
        
    }()
    
    
    
    
    override func ignition() {
        addTableDelegate([table])
        view.addSubview(table)
        table.fillSuperview()
        
        setBackground(image: core.man.img("bkg"), nil)
    }
    
    
    
    override func launch() {
        
         core.usr.addWallets([core.wal])
         print("BOO")
         print(core.usr)
         print("MOO")
         print(core.usr.wallets)
        
         let db = Firestore.firestore()
         
        
        
    }
    
    
    
}


// MARK: X



extension debugController:UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        log(String(_ctrs.count) + " total trolls")
        
        return _ctrs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let c = UITableViewCell()
        c.layer.zPosition = tableView.layer.zPosition + 1
        
        let l = UILabel()
        l.textAlignment = .center
        l.font = UIFont(name: "Papyrus", size: 18)
        l.text = Array(_ctrs.keys)[indexPath.row]
        l.textColor = .green
        l.backgroundColor = .clear
        
        c.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        c.addSubview(l)
        c.height(constant: 80)
        
        let b = UIView()
        b.backgroundColor = core.man.color("almost_green")
        c.selectedBackgroundView = b
        
        l.fillSuperview()
        l.layer.zPosition = c.layer.zPosition + 1
        
        return c
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        log("presenting " + Array(_ctrs.keys)[indexPath.row])
        
        present(Array(_ctrs.values)[indexPath.row], animated: true, completion: nil)
        
    }
    
    
    
    
    
}
