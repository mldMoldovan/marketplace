//
//  panelView.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 06/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit



class panelView:UIView{
    
    
    
    
    
    // MARK: CONTAINER
    
    
    
    let container:UIStackView = {
        
        let c = UIStackView()
        c.axis = .vertical
        c.alignment = .center
        c.distribution = .fillEqually
        c.spacing = 10
        c.tag = 1300
        
        let t = UIStackView()
        t.axis = .horizontal
        t.alignment = .center
        t.distribution = .fillEqually
        t.spacing = 10
        t.tag = 1301
        
        let b = UIStackView()
        b.axis = .horizontal
        b.alignment = .center
        b.distribution = .fillEqually
        b.spacing = 10
        b.tag = 1302
        
        for i in 0...5{
            
            let img = UIImageView(image: core.man.img("poster1"))
            img.contentMode = .scaleAspectFit
            img.tag = i + 1
            
            if i < 3{
                t.addArrangedSubview(img)
            } else {
                b.addArrangedSubview(img)
            }
        }
        
        c.addArrangedSubview(t)
        c.addArrangedSubview(b)
        
        
        
        return c
        
    }()
    
    
    // MARK: SET IMAGE
    
    
    
    func setImage(_ image: UIImage){
        
        
        for case let s as UIStackView in container.arrangedSubviews{
            
            if s.tag == 1301 || s.tag == 1302{
                for i in 0...2{
                    for case let img as UIImageView in s.arrangedSubviews{
                        
                        if img.tag == i + 1{
                            img.image = image
                        } else {
                            log("image view tag error")
                        }
                        
                    }
                }
            } else {
                log("horizontal stack tag error")
            }
        }
        
    }
    
    
    // MARK: SET IMAGES
    
    
    func setImages(_ images: [UIImage]){
        
        for case let s as UIStackView in container.arrangedSubviews{
            
            
            // up
            
            if s.tag == 1301{
                for i in 0...2{
                    for case let img as UIImageView in s.arrangedSubviews{
                        
                        if img.tag == i + 1{
                            img.image = images[i]
                        } else {
                            log("top image view tag error")
                        }
                        
                    }
                }
            } else {
                log("top horizontal stack tag error")
            }
            
            // down
            
            if s.tag == 1302{
                           for i in 3...5{
                               for case let img as UIImageView in s.arrangedSubviews{
                                   
                                   if img.tag == i + 1{
                                       img.image = images[i]
                                   } else {
                                       log("down image view tag error")
                                   }
                                   
                               }
                           }
                       } else {
                           log("down horizontal stack tag error")
                       }
        }
        
    }
    
    
    // MARK: FROM USER
    
    func fromUser(_ user: user){
        
        if let i = user.images{
            
            if i.count > 5{
                var j:[UIImage] = []
                for k in 0...5{
                    j.append(i[k])
                }
                setImages(j)
            } else {
                log("not enough images")
            }
            
            
        }
        
    }
    
    
    
    
    
    init(_ placeholder: UIImage?) {
        super.init(frame: .zero)
        backgroundColor = .clear
        
        addSubview(container)
        container.fillSuperview()
        
        
        
    }
    
    
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
}
