//
//  starsView.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit



class stars:UIView{
    
    
    let data = [
       ["star_empty" , "full_star"],
    ]
    
    
    let s:UIStackView = {
        
        let s = UIStackView()
        
        s.axis = .horizontal
        s.alignment = .center
        s.distribution = .fillEqually
        s.spacing = 2
        s.tag = 1933
        
        return s
        
    }()
    
    
    
    convenience init(){
        
        self.init()
        
        
        
    }
    
    
    
    init(_ rating: Double,_ interactive: Bool) {
        super.init(frame: .zero)
        
        tag = 1933
        backgroundColor = .clear
        
        self.addSubview(s)
        s.fillSuperview()
        
        for case let t as UIStackView in self.subviews{
            
            if t.tag == 1933{
                
                for i in 0...4{
                    
                    if interactive == true{
                        let st = UIButton()
                        st.imageView?.contentMode = .scaleAspectFit
                        st.tag = i + 1
                        
                        if st.tag < Int(rating) + 1{
                            st.setImage(UIImage(named: data[0][1]), for: .normal)
                        } else {
                            st.setImage(UIImage(named: data[0][0]), for: .normal)
                        }
                        print("Star added tag", st.tag)
                        
                        
                        st.addTarget(self, action: #selector(starsTouch(_:)), for: .touchUpInside)
                        
                        t.addArrangedSubview(st)
                    
                        
                        
                        
                    } else {
                        let st = UIImageView()
                        st.contentMode = .scaleAspectFit
                        st.tag = i + 1
                        
                        if st.tag < Int(rating) + 1{
                            st.image = UIImage(named: data[0][1])
                        } else {
                            st.image = UIImage(named: data[0][0])
                        }
                        print("Star added tag", st.tag)
                        t.addArrangedSubview(st)
                        
                    }
                    
                    
                }
                
                if t.arrangedSubviews.count != 5 {
                    print("Error too many stars?:", t.arrangedSubviews.count)
                } else {
                    print("Exactly " + String(t.arrangedSubviews.count) + " stars have been added to STCKV01933")
                }
                
                
                
                
            }
            
        }
        

    }
    
    

    
    
    @objc func starsTouch(_ sender: UIButton){
        
    
        setRating(Double(sender.tag))

        
    }
    
    
    func setRating(_ rating: Double){
        
        
        for case let st as UIButton in s.arrangedSubviews{
            
            if st.tag < Int(rating + 1){
                st.setImage(UIImage(named: data[0][1]), for: .normal)
            } else {
                st.setImage(UIImage(named: data[0][0]), for: .normal)
            }
            
        }
        
        
        
    }
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}
