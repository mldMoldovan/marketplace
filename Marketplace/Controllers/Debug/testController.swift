//
//  testController.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit



class testController:XTController{
    
    
    override func ignition() {
        setBackground(image: core.man.img("bkg"), nil)
        addBar(.test)
    }
    
    override func launch(){
        
        addBar(.test)
        
        core.fillUsers()
        let v = userView(core.users[0], false)
        add(v)
        v.anchor(top: topView?.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor)
        
        let rs = rating([core.users[0],core.users[1]], rate: 3, comment: "Sa te iau in pula cumetre", title: "Salam la punga !")
        
        let r = ratingView(rs)
        add(r)
        r.anchor(top: v.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor)
        
    }
    
    
}
