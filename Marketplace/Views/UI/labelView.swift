//
//  labelView.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 06/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit


class headerView:UIView{
    
    
    
    let container:UILabel = {
        
        let c = UILabel()
        c.text = "newLabel"
        c.textColor = core.man.color("semi_white")
        c.textAlignment = .left
        c.font = UIFont(name: "Helvetica Bold", size: 36)
        c.padding = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        
        
        
        return c
        
    }()
    
    
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .clear
        
        addSubview(container)
        container.fillSuperview()
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
