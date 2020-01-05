//
//  ratingView.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit


class ratingView:UIView{
    
    
    var item:rating?
    
    
    let st:UIStackView = {
        
        let s = UIStackView()
        s.axis = .horizontal
        s.alignment = .center
        s.distribution = .fillEqually
        s.spacing = 5
        
        let v = UIStackView()
        v.axis = .vertical
        v.distribution = .fillEqually
        v.alignment = .center
        v.spacing = 5
        
        
        let l = UILabel()
        l.text = "Unknown Title"
        l.textColor = core.man.color("semi_white")
        l.textAlignment = .center
        l.font = UIFont(name: "Helvetica", size: 18)
        l.tag = 1151
        
        let d = UILabel()
        d.text = "Unknown Stamp"
        d.textColor = core.man.color("semi_white")
        d.textAlignment = .center
        d.font = UIFont(name: "Helvetica", size: 18)
        d.tag = 1152
        
        let ss = stars(3.2, true)
        
        
        v.addArrangedSubview(l)
        v.addArrangedSubview(d)
        
        s.addArrangedSubview(ss)
        s.addArrangedSubview(v)
        
        
        return s
        
    }()
    
    
    
    
    
    init(_ model: rating?) {
        super.init(frame: .zero)
        
        item = model
        
        backgroundColor = .clear
        
        if let m = model{
            
            for case let l as UILabel in st.arrangedSubviews{
                if l.tag == 1151{
                    l.text = m.title
                }
                if l.tag == 1152{
                    l.text = "15.03.2006"
                }
            }
            for case let i as stars in st.arrangedSubviews{
                i.removeFromSuperview()
            }
            st.addArrangedSubview(stars(Double(m.rate), true))
            
        } else {
            print("model failed default data !")
        }
        
        addSubview(st)
        st.fillSuperview(padding: UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5))
        
    }
    
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
}
