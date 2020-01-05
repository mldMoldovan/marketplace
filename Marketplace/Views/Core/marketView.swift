//
//  marketView.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit


class marketView:UIView{
    
    var item:market?
    
    
    
    
    
    init(_ model: market) {
        super.init(frame: .zero)
        item = model
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
}
