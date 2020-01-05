//
//  back.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 08/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit


class back:UIButton{
    
    
    
    
    init(_ image: UIImage?,_ title: String?,_ color: UIColor?) {
        super.init(frame: .zero)
        backgroundColor = .clear
        
        width(constant: 60)
        height(constant: 60)
        
        
        if let i = image{
            setImage(i, for: .normal)
        }
        if let t = title{
            setTitle(t, for: .normal)
            if let c = color{
                setTitleColor(c, for: .normal)
            }
        } else {
            if let c = color{
                backgroundColor = c
            }
        }
        
        addTarget(self, action: #selector(self.bam), for: .touchUpInside)
        
        
    }
    
    override func didMoveToSuperview() {
        self.anchor(top: self.superview?.safeAreaLayoutGuide.topAnchor, leading: self.superview?.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 10, bottom: 0, right: 0))
    }
    
    
    @objc func bam(){
        
        if let parent = self.parentViewController{
            parent.dismiss(animated: true)
            log("back dismiss")
        } else {
            
            log("backLog Parent viewC is NULL")
            
        }
        
    }
    
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}
