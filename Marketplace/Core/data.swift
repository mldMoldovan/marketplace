//
//  _imgs.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 29/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit



// MARK: IMAGES

let _imgs : [String:UIImage?] = [

    
    // CURRENCIES
    
    "eur" : UIImage(named: "eur_icon"),
    "btc" : UIImage(named: "btc_icon"),
    "usd" : UIImage(named: "usd_icon"),
    
    
    "bkg" : UIImage(named: "background"),
    "login_bkg" : UIImage(named: "login_background"),
    "logo" : UIImage(named: "logo"),
    
    "stand_by" : UIImage(named: "stand_by"),
    
    
    "clown_icon" : UIImage(named: "clown_icon"),
    "arcadia_top" : UIImage(named: "arcadia_written"),
    "poster1" : UIImage(named: "poster"),
    
    
    // DEFAULTS
    
    "_user" : UIImage(named: "default_user"),
    "_item" : UIImage(named: "default_item"),
    "_market" : UIImage(named: "default_market"),
    
    
    // BOILERPLATE
    
    
    // USERS
    
    "user_photo1" : UIImage(named: "user_photo1"),
    "user_photo2" : UIImage(named: "user_photo2"),
    "user_photo3" : UIImage(named: "user_photo3"),
    "user_photo4" : UIImage(named: "user_photo4"),
    "user_photo5" : UIImage(named: "user_photo5"),
    
    
    // ITEMS
    
    "item_photo1" : UIImage(named: "item_photo1"),
    "item_photo2" : UIImage(named: "item_photo2"),
    "item_photo3" : UIImage(named: "item_photo3"),
    "item_photo4" : UIImage(named: "item_photo4"),
    "item_photo5" : UIImage(named: "item_photo5"),
    
    
    
    
    // MARKETS
    
    "market_photo1" : UIImage(named: "market_photo1"),
    "market_photo2" : UIImage(named: "market_photo2"),
    "market_photo3" : UIImage(named: "market_photo3"),
    "market_photo4" : UIImage(named: "market_photo4"),
    "market_photo5" : UIImage(named: "market_photo5"),
    

]



// MARK: STRINGS


let _strs : [String:String] = [

    "appName" : "Arcadia",
    
    
    // LOGIN TROLL
    
    "LC_loginLabel" : "Login",
    "LC_userField" : "Username...",
    "LC_passField" : "Password...",
    "LC_recoverField" : "Email...",
    
    "LC_termsLabel" : "Terms and Conditions",
    "LC_privacyLabel" : "Privacy policy",
    
    "LC_downString1" : "Check our ",
    "LC_downString2" : " and ",
    "LC_downString3" : " on the portals",
    
    
    // SEARCH TROLL
    
    "SC_search_phd" : "What do you wish... ?"

]



// MARK: CONTROLLERS


var _ctrs : [String:XTController] = [

    // ACCOUNT
    "login" : loginController(),
    "profile" : profileController(),
    "fail" : failController(),
    "search" : searchController(),
    
    
    // DEBUG & TESTIN
    "debug" : debugController(),
    "test" : testController(),
    "template" : templateController(),
    
    
    // DATA DISPLAY
    "user" : listController(),
    "item" : itemController(),
    "history" : historyController(),
    "wallet" : walletController(),
    "market" : marketController(),
    
    // RT DATA
    "chat" : chatController(),
    "map" : mapController(),
    
    "settings" : settingsController(),
    "create" : createController(),
    

]



// MARK: COLORS

let _clrs : [String:UIColor] = [

    "app_color" : UIColor.red,
    
    "background" : UIColor.white,
    
    "background_dark" : UIColor.black,

    "wallet_color" : UIColor.green,
    
    
    // BASIC
    
    "white" : UIColor.white,
    "lightGray" : UIColor.lightGray,
    "black" : UIColor.black,
    
    
    "red" : UIColor.red,
    "green" : UIColor.green,
    "blue" : UIColor.blue,
    
    
    
    
    // WITCH
    
    "witch_glass" : UIColor.black.withAlphaComponent(0.666),
    
    "witch_white" : UIColor.white.withAlphaComponent(0.666),
    
    
    // SEMI
    
    "semi_white" : UIColor.white.withAlphaComponent(0.5),
    "semi_black" : UIColor.black.withAlphaComponent(0.5),
    
    
    
    "semi_red" : UIColor.red.withAlphaComponent(0.5),
    "semi_green" : UIColor.green.withAlphaComponent(0.5),
    "semi_blue" : UIColor.blue.withAlphaComponent(0.5),
    
    
    // ALMOST
    
    "almost_white" : UIColor.white.withAlphaComponent(0.3),
    "almost_black" : UIColor.black.withAlphaComponent(0.3),
    
    "almost_red" : UIColor.red.withAlphaComponent(0.3),
    "almost_green" : UIColor.green.withAlphaComponent(0.3),
    "almost_blue" : UIColor.blue.withAlphaComponent(0.3),
]


// MARK: TAGS


let tags:[String:String] = [

    "background" : "2000",
    "blur" : "2012",
    "logoButton" : "2077",
    "stars" : "1933",
    "bar" : "1851",
    "bar_stack" : "1850",
    "bar_leftItem" : "1847",
    "bar_centerItem" : "1848",
    "bar_rightItem" : "1849",

]
