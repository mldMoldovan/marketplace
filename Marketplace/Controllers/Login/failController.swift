//
//  failController.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit



class failController:XTController{
    
    
    
    
    
    
    override func ignition() {
        setBackground(image: core.man.img("bkg"), .systemChromeMaterialDark)
        addBar(.test)
        addTopImage(core.man.img("arcadia_top"))
        addTopImage(core.man.img("stand_by"))
        addTopImage(core.man.img("clown_icon"))
    }
    
    
}
