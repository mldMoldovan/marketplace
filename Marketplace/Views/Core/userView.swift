//
//  ProfileView.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit


class userView:UIView{
    
    
    var item:user?
    
    
    
    let container:UIStackView = {
        
        let s = UIStackView()
        s.axis = .horizontal
        s.alignment = .center
        s.distribution = .fillProportionally
        s.spacing = 10
        s.tag = 1887
        
        
        let p = UIImageView(image: core.man.img("clown_icon"))
        p.tag = 4096
        
        
        let n = UILabel()
        n.text = "marcelCartier, 18"
        n.textColor = core.man.color("semi_white")
        n.textAlignment = .center
        n.font = UIFont(name: "Helvetica", size: 19)
        n.tag = 1880
        
        let f = UILabel()
        f.text = "Missing Nameovitch"
        f.textColor = core.man.color("semi_white")
        f.textAlignment = .center
        f.font = UIFont(name: "Helvetica", size: 19)
        f.tag = 1881
        
        let r = UIStackView()
        r.axis = .vertical
        r.alignment = .leading
        r.distribution = .fillEqually
        r.spacing = 0
        r.tag = 1889
        
        r.addArrangedSubview(n)
        r.addArrangedSubview(f)
        
        s.addArrangedSubview(p)
        s.addArrangedSubview(r)
        
        
        
        
        return s
        
    }()
    
    
    let extra:UIStackView = {
    
        let e = UIStackView()
        e.axis = .vertical
        e.alignment = .center
        e.distribution = .fillEqually
        e.spacing = 10
        
        
        
        return e
    
    }()
    
    
    
    
    init(_ model: user, _ edit: Bool?) {
        super.init(frame: .zero)
        
        item = model
        
        addSubview(container)
        container.fillSuperview()
        
        
        
        for case let i as UIImageView in container.arrangedSubviews{
            if i.tag == 4096{
                if let images = model.images{
                    i.image = images[0]
                }
            }
        }
        
        for case let s as UIStackView in container.arrangedSubviews{
            if s.tag == 1889{
                for case let l as UILabel in s.arrangedSubviews{
                    if l.tag == 1880{
                        l.text = model.name + ", 18"
                    }
                    if l.tag == 1881{
                        l.text = model.fullname
                    }
                }
            }
        }
        
        
    }
    
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    
    
}
