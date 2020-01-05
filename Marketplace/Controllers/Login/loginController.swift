//
//  loginController.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 29/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit


class loginController:XTController{
    
    
    let logo:UIButton = {
        
        let b = UIButton()
        b.setImage(core.man.img("clown_icon"), for: .normal)
        b.tag = 2077
        b.width(constant: 200)
        b.height(constant: 200)
        
        return b
        
    }()
    
    
    lazy var fs:UIStackView = {
        
        let s = UIStackView()
        s.axis = .vertical
        s.alignment = .center
        s.distribution = .fillEqually
        s.spacing = 10
        //s.addBackground(color: core.man.color("witch_glass"))
        s.height(constant: 200)
        s.width(constant: core.w - 32)
        s.tag = 1440
        
        
        let l = UIImageView(image: core.man.img("clown_icon"))
        l.contentMode = .scaleAspectFit
        l.tag = 1433
        l.height(constant: 100)
        l.width(constant: 100)
        l.layer.cornerRadius = 50
        l.clipsToBounds = true
        
        
        
        let u = UITextField()
        u.tag = 1430
        u.attributedPlaceholder = NSAttributedString(string: core.man.str("LC_userField"),
        attributes: [NSAttributedString.Key.foregroundColor: core.man.color("semi_white")])
        u.textColor = .white
        u.textAlignment = .left
        u.keyboardType = .asciiCapable
        u.returnKeyType = .continue
        u.setLeftPaddingPoints(20)
        u.backgroundColor = core.man.color("witch_glass")
        
        let p = UITextField()
        p.tag = 1431
        p.attributedPlaceholder = NSAttributedString(string: core.man.str("LC_passField"),
        attributes: [NSAttributedString.Key.foregroundColor: core.man.color("almost_white")])
        p.textColor = .white
        p.textAlignment = .left
        p.isSecureTextEntry = true
        p.keyboardType = .asciiCapable
        p.returnKeyType = .done
        p.setLeftPaddingPoints(20)
        p.backgroundColor = core.man.color("witch_glass")
        
        let r = UITextField()
        r.tag = 1432
        r.attributedPlaceholder = NSAttributedString(string: core.man.str("LC_recoverField"),
                                                     attributes: [NSAttributedString.Key.foregroundColor: core.man.color("almost_white")])
        r.textColor = .white
        r.textAlignment = .left
        r.keyboardType = .emailAddress
        r.returnKeyType = .send
        r.setLeftPaddingPoints(20)
        r.backgroundColor = core.man.color("witch_glass")
        //r.isHidden = true
        
        s.addArrangedSubview(l)
        s.addArrangedSubview(u)
        s.addArrangedSubview(p)
        
        return s
        
    }()
    
    
    
    override func ignition() {
        
        
        setBackground(image: core.man.img("login_bkg"), nil)
        
        
        for case let f as UITextField in fs.arrangedSubviews{
            //addTextFieldDelegate([f])
            f.delegate = self
            log("delegate set ID: " + String(f.tag))

        }
        
        add(fs)
        fs.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 350, left: 40, bottom: 200, right: 40))
        fs.centerInSuperview()
        
        log("stack added")
        
        
    }
    
    
    
    
    @objc func forgot(){
        
        for case let f as UITextField in fs.arrangedSubviews{
            if f.tag != 1432{
                f.fadeTransition(0.5)
                //f.alpha = 0.0
            } else {
                f.fadeTransition(0.5)
            }
        }
        
    }
    
    
    
    
    
}



// MARK: X


extension loginController:UITextFieldDelegate{
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        
        
        if textField.tag == 1430{
            log("user field detected tag " + String(textField.tag))
            textField.resignFirstResponder()
            
            for case let s as UIStackView in view.subviews{
                if s.tag == 1440{
                    for case let f as UITextField in s.arrangedSubviews{
                        if f.tag == 1431{
                            view.frame.origin.y -= 100
                            f.becomeFirstResponder()
                        }
                    }
                }
            }
            
            
        }
        
        
        if textField.tag == 1431{
            log("pass field detected tag " + String(textField.tag))
            textField.resignFirstResponder()
            if view.frame.origin.y == -100 {
                view.frame.origin.y += 100
            }
        }
        
        
        if textField.tag == 1432{
            log("email field detected tag " + String(textField.tag))
            textField.resignFirstResponder()
        }
        
        
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        log("Did begin editing ID: " + String(textField.tag))
        if textField.tag == 1431{
            if view.frame.origin.y == 0{
                view.frame.origin.y += 100
            }
        }
    }
    
}




