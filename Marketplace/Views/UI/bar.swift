//
//  Bar.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit



enum barType{
    
    case back, test
    
}



class bar:UIView{
    
    
    let itemSize:CGFloat = 50
    
    
    
    // MARK: ADDON VIEWS
    
    
    let backButton:UIButton = {
        
        let b = UIButton()
        b.setImage(core.man.img("clown_icon"), for: .normal)
        b.imageView?.contentMode = .scaleAspectFit
        
        return b
        
    }()
    
    
    let clown:UIImageView = {
        
        
        let i = UIImageView(image: core.man.img("clown_icon"))
        i.contentMode = .scaleAspectFit
        
        
        return i
        
    }()
    
    
    
    
    
    
    // MARK: BAR GLOBALS
    
    
    lazy var leftItem:UIButton = {
        
        let b = UIButton()
        b.width(constant: itemSize)
        b.height(constant: itemSize)
        b.tag = 1847
        
        return b
        
    }()
    
    lazy var centerItem:UIButton = {
        
        let b = UIButton()
        b.width(constant: itemSize)
        b.height(constant: itemSize)
        b.tag = 1848
        b.setImage(core.man.img("clown_icon"), for: .normal)
        
        return b
        
    }()
    
    lazy var rightItem:UIButton = {
        
        let b = UIButton()
        b.width(constant: itemSize)
        b.height(constant: itemSize)
        b.tag = 1849
        
        return b
        
    }()
    
    
    let content:UIStackView = {
        
        let c = UIStackView()
        c.axis = .horizontal
        c.alignment = .center
        c.distribution = .fillEqually
        c.spacing = 50
        c.tag = 1866
        
        
        
        return c
        
    }()
    
    
    
    
    // MARK: INIT
    
    init(_ type: barType) {
        super.init(frame: .zero)
        tag = 1851
        //backgroundColor = core.man.color("almost_black")
        backgroundColor = .clear
        height(constant: 88)
        width(constant: core.w)
        
        layer.cornerRadius = 16
        clipsToBounds = true
        
//        addSubview(content)
//        content.fillSuperview()
//
//        content.addArrangedSubview(leftItem)
//        content.addArrangedSubview(centerItem)
//        content.addArrangedSubview(rightItem)
        
        //setupType(type)
        
//        addSubview(leftItem)
//        leftItem.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: nil, padding: .init(top: 10, left: 10, bottom: 10, right: 10))
//
//        addSubview(centerItem)
//        centerItem.anchor(top: self.topAnchor, leading: leftItem.trailingAnchor, bottom: self.bottomAnchor, trailing: nil, padding: .init(top: 10, left: 10, bottom: 10, right: 10))
//
//        addSubview(rightItem)
//        rightItem.anchor(top: self.topAnchor, leading: centerItem.trailingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor, padding: .init(top: 10, left: 10, bottom: 10, right: 10))
        
        
        let n = UINavigationBar()
        n.isTranslucent = true
        n.backgroundColor = .clear
        n.setBackgroundImage(UIImage(), for: .default)
        n.shadowImage = UIImage()
        
        let ni = UINavigationItem(title: "ArcadiA")
        backButton.addTarget(self, action: #selector(self.barDismiss), for: .touchUpInside)
        ni.leftBarButtonItem = UIBarButtonItem(customView: backButton)
        
        n.setItems([ni], animated: false)
        
        self.addSubview(n)
        //n.fillSuperview()
        //self.layoutIfNeeded()
        //n.layoutIfNeeded()
        
        
        
        n.anchor(top: self.safeAreaLayoutGuide.topAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    
    // MARK: SETUP
    
    
    func setupType(_ type: barType){
        
        //leftItem.addSubview(backButton)
        backButton.addTarget(self, action: #selector(self.barDismiss), for: .touchUpInside)
        
        switch type {
            case .back:
                leftItem.addSubview(backButton)
                leftItem.addTarget(self, action: #selector(self.barDismiss), for: .touchUpInside)
                centerItem.addSubview(clown)
                rightItem.addSubview(UIView())
            case .test:
                leftItem.addSubview(backButton)
                centerItem.addSubview(clown)
                rightItem.addSubview(UIView())
        }
        
    }
    
    
    @objc func barDismiss(){
        
        if let parent = self.parentViewController{
            parent.dismiss(animated: true)
            log("Bar dismiss")
        } else {
            
            log("Parent viewC is NULL")
            
        }
        
    }
    
    
}
