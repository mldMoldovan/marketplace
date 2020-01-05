//
//  walletCell.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 06/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit


class walletCell:UIView{
    
    
    var item:wallet?
    var man = aku()
    
    // MARK: CONTAINER
    
    
    let container:UIStackView = {
        
        let s = UIStackView()
        s.axis = .horizontal
        s.alignment = .center
        s.distribution = .fillProportionally
        s.spacing = 20
        s.tag = 1500
        
        let i = UIImageView(image: core.man.img("btc"))
        i.tag = 1499
        i.height(constant: 80)
        i.width(constant: 80)
        
        s.addArrangedSubview(i)
        
        
        let v = UIStackView()
        v.axis = .vertical
        v.alignment = .center
        v.distribution = .fillEqually
        v.spacing = 2
        v.tag = 1510
        
        
        
        let n = UILabel()
        n.text = "Unknown Name"
        n.tag = 1501
        n.textColor = core.man.color("witch_white")
        n.font = UIFont(name: "Helvetica", size: 28)
        n.textAlignment = .left
        
        let o = UILabel()
        o.text = "Unknown Owner"
        o.tag = 1502
        o.textColor = core.man.color("witch_white")
        o.font = UIFont(name: "Helvetica Regular", size: 21)
        o.textAlignment = .left
        
        let a = UILabel()
        a.text = "Unknown Amount"
        a.tag = 1503
        a.textColor = core.man.color("witch_white")
        a.font = UIFont(name: "Helvetica Bold", size: 27)
        a.textAlignment = .left
        
        
        
        v.addArrangedSubview(n)
        v.addArrangedSubview(o)
        v.addArrangedSubview(a)
        
        
        s.addArrangedSubview(v)
        
        return s
        
    }()
    
    
    
    init(_ model: wallet?) {
        super.init(frame: .zero)
        
        
        backgroundColor = .clear
        
        
        if let m = model{
            
            item = m
            
            for case let i as UIImageView in container.arrangedSubviews{
                
                
                
                switch m.currency {
                    case .euro:
                       i.image = core.man.img("eur")
                    case .bitcoin:
                       i.image = core.man.img("btc")
                    default:
                       i.image = core.man.img("eur")
                }
                
                
            }
            for case let w as UIStackView in container.arrangedSubviews{
                
                for case let l as UILabel in w.arrangedSubviews{
                    
                    if l.tag == 1501{
                        l.text = m.name
                    }
                    if l.tag == 1502{
                        l.text = m.owner.name
                    }
                    if l.tag == 1503{
                        l.text = String(Int(m.getAmount()))
                    }
                    
                }
                
            }
            
            
            
        } else {
            print("Basic init, no entrance data for wallet")
        }
        
        
        
        
        

        
        
        addSubview(container)
        container.fillSuperview(padding: UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5))
        
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
}
