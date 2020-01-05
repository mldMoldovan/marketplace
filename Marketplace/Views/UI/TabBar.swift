//
//  TabBar.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit



class tabar:UIView{
    
    var tab:Int = 1
    
    
    
    let container:UIStackView = {
        
        let c = UIStackView()
        c.axis = .horizontal
        c.alignment = .center
        c.distribution = .fillEqually
        c.spacing = 10
        
        
        
        return c
        
    }()
    
    
    
    func setup(_ data: [[String]]){
        
        for i in 0...data.count - 1{
            
            let b = UIButton()
            b.backgroundColor = .clear
            b.setTitle(data[i][0], for: .normal)
            b.titleLabel?.font = UIFont(name: "Helvetica Bold", size: 20)
            b.tag = i + 1
            
            if data[i][1] == "true"{
                b.setTitleColor(core.man.color("white"), for: .normal)
            } else {
                b.setTitleColor(core.man.color("lightGray"), for: .normal)
            }
            
            b.addTarget(self, action: #selector(changed(_:)), for: .touchUpInside)
            
            container.addArrangedSubview(b)
            log("tab added tag " + String(b.tag))
            
        }
        
        
        
    }
    
    
    @objc func changed(_ sender: UIButton){
        
        
        
        tab = sender.tag
        
        log("tab changed, newValue: " + String(tab))
        
        for case let b as UIButton in container.arrangedSubviews{
            
            if b.titleColor(for: .normal) == core.man.color("white"){
                b.setTitleColor(core.man.color("lightGray"), for: .normal)
            }
            
        }
        
        for case let n as UIButton in container.arrangedSubviews{
            if n.tag == tab{
                n.setTitleColor(core.man.color("white"), for: .normal)
            }
        }
        
    }
    
    
    
    
    init(_ tabs: [[String]]) {
        super.init(frame: .zero)
        backgroundColor = .clear
        
        addSubview(container)
        container.fillSuperview()
        
        setup(tabs)
        
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
