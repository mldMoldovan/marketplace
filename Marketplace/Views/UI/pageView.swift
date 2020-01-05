//
//  pageView.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit



class pageView:UIView{
    
    
    var timer:Timer?
    var data:[UIImage]?
    var tab = 0
    
    
    let container:UIImageView = {
        
        let c = UIImageView()
        c.contentMode = .scaleAspectFit
        c.image = core.man.img("poster1")
        
        return c
        
    }()
    
    
    
    @objc func update(){
        
        if let d = data{
            container.image = d[tab]
            
            // carousel
            if tab < d.count - 1{
                tab += 1
            } else {
                tab = 0
            }
            
        }
        
    }
    
    
    func trigger(_ data: [UIImage]){
        self.data = data
        self.timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(update), userInfo: nil, repeats: true)
    }
    
    
    init(_ pages: [UIImage]?) {
        super.init(frame: .zero)
        backgroundColor = .clear
        
        
        if let p = pages{
            trigger(p)
        }
        
        addSubview(container)
        container.fillSuperview()
        
    }
    
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    
}
