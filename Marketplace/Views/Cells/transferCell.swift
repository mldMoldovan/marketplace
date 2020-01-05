//
//  transferCell.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 06/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit


class transferCell:UIView{
    
    var item:transaction?
    
    
    
    // MARK: CONTAINER
    
    
    let container:UIStackView = {
        
        let c = UIStackView()
        c.axis = .horizontal
        c.alignment = .center
        c.distribution = .fillProportionally
        c.spacing = 10
        c.tag = 1500
        
        
        let i = UIImageView(image: core.man.img("clown_icon"))
        i.contentMode = .scaleAspectFit
        i.height(constant: 50)
        i.width(constant: 50)
        i.tag = 1499
        
        
        let l = UIStackView()
        l.axis = .vertical
        l.alignment = .leading
        l.distribution = .fillEqually
        l.spacing = 10
        l.tag = 1510
        
        let t = UILabel()
        t.text = "noNamer"
        t.textColor = core.man.color("almost_white")
        t.textAlignment = .left
        t.font = UIFont(name: "Helvetica", size: 18)
        t.tag = 1501
        
        let d = UILabel()
        d.text = "nonamaevNameovitch"
        d.textColor = core.man.color("almost_white")
        d.textAlignment = .left
        d.font = UIFont(name: "Helvetica", size: 18)
        d.tag = 1502
        
        l.addArrangedSubview(t)
        l.addArrangedSubview(d)
        
        c.addArrangedSubview(i)
        c.addArrangedSubview(l)
        
        return c
        
    }()
    
    
    
    init(_ model: transaction) {
        super.init(frame: .zero)
        item = model
        backgroundColor = .clear
        
        addSubview(container)
        container.fillSuperview()
        
    }
    
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
}
