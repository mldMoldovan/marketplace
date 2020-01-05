//
//  core.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 29/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit


class core{
    
    static let debug = true
    static let logs = true
    static let main = loginController()
    static let color = UIColor.clear
    static let man = aku()
    static var logCounter = 0
    static var theme:XTTheme = .art
    static let isTheme = true
    
    static var usr = user("garcea2005", "Garcea Gabriel")
    static var wal = wallet("portofel", currency: .euro, owner: core.usr, code: "1234")
    
    static var users:[user] = [
       user("sickRanchez", "Sickonald Ranchezio Montoya Ramires-Escobar"),
       user("toniCipriani", "Antonio Ciomaggo Ciprani"),
       user("andrewRyan", "Andrew Reginald Walter Ryan"),
       user("becaliForta", "Gheorghe Razboinicoo Becali"),
       user("georgeTufish", "George Dublu W Tufish"),
    ]
    
    static func setDefaultTheme(_ vc: XTController){
        
        if core.isTheme == true{
            switch core.theme {
                
            case .art:
                vc.setBackground(image: core.man.img("bkg"), .systemUltraThinMaterial)
            case .business:
                vc.color(core.man.color("white"))
            case .metro:
                vc.color(core.man.color("white"))
            }
        } else {
            vc.setBackground(image: core.man.img("bkg"), nil)
        }
        
    }
    
    static func fillUsers(){
        
        //let output:[user] = []
        
        for i in 1...5{
            let s = "user_photo" + String(i)
            core.users[i - 1].addImages([core.man.img(s)])
        }
        
    }
    
    static var wallets:[wallet] = []
    static var marketplace:[item] = []
    
    
    static let w = UIScreen.main.bounds.width
    static let h = UIScreen.main.bounds.height
    
    
    
    
}

enum XTTheme{
    
    case art, metro, business
    
}


enum pal{
    
    case semiWhite, witchGlass
    
}

class aku{
    
    var data:[AnyObject] = []
    
    
    
    // MARK: DATA RETRIEVAL
    
    
    // IMAGES
    
    func img(_ key: String) -> UIImage{
        
        
        print(" ~> AKU >> image load failure at: ", key)
        
        return (_imgs[key] ?? UIImage(named: "retrieve_fail"))!
        
        
    }
    
    
    // STRINGS
    
    
    func str(_ key: String) -> String{
        
        print(" ~> AKU >> string load failure at: ", key)
        
        return _strs[key] ?? "retrieve_fail KEY ~> " + key + " <~ "
        
    }
    
    // CONTROLLERS
    
    func troll(_ key: String) -> XTController{
        
        print(" ~> AKU >> troll load failure at: ", key)
        
        return _ctrs[key] ?? failController()
        
    }
    
    
    // COLORS
    
    
    func color(_ key: String) -> UIColor{
        
        print(" ~> AKU >> color load failure at: ", key)
        
        return _clrs[key] ?? UIColor.red.withAlphaComponent(0.5)
        
    }
    
    
    // MARK: READ DATA
    
    
    func readItems(_ filename: String) -> AnyObject?{
        
        if let path = Bundle.main.path(forResource: filename, ofType: "json") {
              do {
                  let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                  if let json = try! JSONSerialization.jsonObject(with: data, options: []) as? [[String:Any]]{
                      return json as AnyObject
                  }
              } catch{
                  
                  print("AKU readItems ERROR")
                  
              }
          }
          
          return nil
        
    }
    
    func readUsers(_ filename: String) -> AnyObject?{
        
        if let path = Bundle.main.path(forResource: filename, ofType: "json") {
              do {
                  let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                  if let json = try! JSONSerialization.jsonObject(with: data, options: []) as? [[String:Any]]{
                      return json as AnyObject
                  }
              } catch{
                  
                  print("AKU readItems ERROR")
                  
              }
          }
          
          return nil
        
    }
    
    
    // MARK: RETURN FROM FILE
    
    
    func returnFromFile(_ file: String?) -> AnyObject? {
      if let path = Bundle.main.path(forResource: "users", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                if let json = try! JSONSerialization.jsonObject(with: data, options: []) as? [[String:Any]]{
                    return json as AnyObject
                }
            } catch{
                
                print("AKU returnFromFile ERROR")
                
            }
        }
        
        return nil
    }
    
    
    
    // MARK: RETURN FROM SERVER
    
    
    func returnFromServer(_ url: String?) -> AnyObject? {
            if let oo = url{
                if let oorl = URL(string: oo){
                        let rq = URLRequest(url: oorl)
                        let sesh = URLSession.shared
                        let tsk = sesh.dataTask(with: rq, completionHandler: { data, resp, err -> Void in
                            if err == nil{
                                print(data as Any)
                                print(resp as Any)
                                print("AKU ~> $ Data loaded...")
                            } else {
                                print("AKU ~> ! ERROR ", err as Any)
                            }
                            
                        
                        })
                        tsk.resume()
                    
                } else {
                    print("AKU ~> ! URL Failure...")
                    return "Poo" as AnyObject
                }
            } else {
                print("AKU ~> ! No URL...")
                return "Phoo" as AnyObject
        }
        print("AKU ~> ! Pizdec...")
        return nil
        
    }
        
        
    // MARK: PUSH TO FILE
    
    
    func pushToFile(_ file: String?) -> AnyObject? {
        
        
        guard let documentDirectoryUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        let fileUrl = documentDirectoryUrl.appendingPathComponent(file! + ".json")

        let whatever =  [["parizer": ["praz": "pateu", "ciucarie": "salvie"]], ["cartof": ["adriaCola": "salam", "soofloo": "saphir"]]]

        do {
            let data = try JSONSerialization.data(withJSONObject: whatever, options: [])
            try data.write(to: fileUrl, options: [])
            print("AKU ~> $ Data written to file...")
        } catch {
            print(error)
        }
        
        return nil
    }
    
    
    // MARK: PUSH TO SERVER
    
    
    
    func pushToServer(_ url: String?) -> AnyObject? {
       if let oo = url{
                if let oorl = URL(string: oo){
                        var rq = URLRequest(url: oorl)
                        rq.httpMethod = "POST"
                        let sesh = URLSession.shared
                        let tsk = sesh.dataTask(with: rq, completionHandler: { data, resp, err -> Void in
                        
                            self.data[0] = data! as AnyObject
                            print("AKU ~> $ Data loaded...")
                        
                        })
                        tsk.resume()
                    
                } else {
                    print("AKU ~> ! URL Failure...")
                    return "Poo" as AnyObject
                }
            } else {
                print("AKU ~> ! No URL...")
                return "Phoo" as AnyObject
        }
        print("AKU ~> ! Pizdec... >> ", url ?? "url retrievalFailure")
        return nil
    }

    
    
}
