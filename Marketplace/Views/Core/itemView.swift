//
//  itemView.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit


class itemView:UIView{
    
    
    var item:item?
    
    
    
    let stk:UIStackView = {
        
        let s = UIStackView()
        s.axis = .vertical
        s.alignment = .center
        s.distribution = .fillProportionally
        s.spacing = 10
        
        
        
        
        
        return s
        
    }()
    
    
    
    
    init(_ model: item?) {
        super.init(frame: .zero)
        
        item = model
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
}
