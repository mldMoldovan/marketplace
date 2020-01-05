//
//  user.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit
import MapKit



struct user{
    
    let id:UUID
    
    let name:String
    let fullname:String
    
    
    // Premium
    var birthday:Date?
    var location:MKMapPoint?
    // >>
    
    var images:[UIImage]?
    
    var markets:[market]?
    var items:[item]?
    var ratings:[rating]?
    var wallets:[wallet]?
    
    
    
    
    
    // MARK: AVG
    
    func getRating() -> Float{
        
        var c = 0
        var s = 0
        
        if let r = self.ratings{
            for i in r{
                c += 1
                s += i.rate
            }
            return Float(s/c)
        }
        
        return 0
        
    }
    
    
    // MARK: AGE
    
    
    func getAge() -> Int{
        
        if let b = birthday{
            return b.age
        }
        
        return 0
        
    }
    
    
    
    // MARK: INIT
    
    
    init(_ name: String,_ fullname: String) {
        self.id = UUID()
        self.name = name
        self.fullname = fullname
        self.birthday = nil
        self.location = nil
        self.images = []
        self.markets = []
        self.items = []
        self.ratings = []
        self.wallets = []
    }
    
    
    func json() //-> [String:Any]{
    {
        
        //return nil
        
    }
    
    
    
    
    
    // MARK: MUTATIONS
    
    mutating func addImages(_ images: [UIImage]){
        
        for i in 0...images.count - 1{
            
            self.images?.append(images[i])
            
        }
        
    }
    
    mutating func addMarkets(_ markets: [market]){
        
        
        for m in 0...markets.count - 1{
            
            self.markets?.append(markets[m])
            
        }
        
        
    }
    
    mutating func addItems(_ items: [item]){
        
        
    }
    
    mutating func addRatings(_ ratings: [rating]){
        
        for r in 0...ratings.count - 1{
            self.ratings?.append(ratings[r])
        }
        
    }
    
    mutating func addWallets(_ wallets: [wallet]){
        
        for w in 0...wallets.count - 1{
            self.wallets?.append(wallets[w])
        }
        
    }
    
    
    
}
