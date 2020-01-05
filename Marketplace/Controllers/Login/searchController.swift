//
//  searchController.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit


class searchController:XTController{
    
    
    let sb:UISearchBar = {
        
        let s = UISearchBar()
        s.placeholder = core.man.str("SC_search_phd")
        s.autocorrectionType = .no
        s.searchBarStyle = .minimal
        s.autocapitalizationType = .none
        s.isTranslucent = true
        s.keyboardType = .asciiCapable
        
        return s
        
    }()
    
    
    
    override func ignition() {
        setBackground(image: core.man.img("bkg"), .light)
        
        add(sb)
        sb.centerInSuperview(size: UIScreen.main.bounds.size)
        
        add(back(nil, "back", core.man.color("semi_white")))
        
        
    }
    
    
    
}



// MARK: X



extension searchController:UISearchBarDelegate{
    
    
    
    func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool {
        searchBar.endEditing(true)
        return true
    }
    
    
    
}
