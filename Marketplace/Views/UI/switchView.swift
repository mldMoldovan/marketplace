//
//  switchView.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 07/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit



class switchView:UIView{
    
    
    
    let container:UIStackView = {
        
        let c = UIStackView()
        c.axis = .horizontal
        c.alignment = .center
        c.distribution = .fillProportionally
        c.spacing = 10
        
        
        
        
        
        return c
        
    }()
    
    
    
    
    init(_ switch: [String]) {
        super.init(frame: .zero)
        backgroundColor = .clear
        
        addSubview(container)
        container.fillSuperview()
        
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
}
