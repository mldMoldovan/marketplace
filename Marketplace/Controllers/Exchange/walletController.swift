//
//  walletController.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit



class walletController:XTController{
    
    var vid:[wallet] = [
    
        wallet("fane", currency: .euro, owner: core.usr, code: "1234"),
        wallet("dorel", currency: .bitcoin, owner: core.usr, code: "1234"),
        wallet("garcel", currency: .bitcoin, owner: core.usr, code: "1234")
        
    ]
    
    
    
    
    let table:UITableView = {
        
        let t = UITableView(frame: .zero, style: .grouped)
        t.separatorStyle = .none
        t.backgroundColor = .clear
        //t.backgroundView = UIImageView(image: core.man.img("bkg"))
        t.backgroundView = nil
        t.tag = 2277
        
        return t
        
    }()
    
    
    
    func fillVoid(_ vid: [wallet]){
        
        self.vid = vid
        
    }
    
    

    
    override func ignition(){
        
        addBar(.back)
        
        //addTable(table)
        
        addTableDelegate([table])
        view.addSubview(table)
        table.anchor(top: topView?.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
        
        
        setBackground(image: core.man.img("login_bkg"), .regular)
        
    }
    
    
}





extension walletController:UITableViewDelegate, UITableViewDataSource{
    
    

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vid.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = UITableViewCell()
        cell.tag = indexPath.row + 1
        cell.backgroundColor = .clear
        
        
        let b = UIView()
        b.backgroundColor = core.man.color("almost_green")
        cell.selectedBackgroundView = b
        
        
        let v = walletCell(vid[indexPath.row])
        
        
        cell.addSubview(v)
        v.fillSuperview()
        
        
        return cell
    }
    
    
    
    
    
}
