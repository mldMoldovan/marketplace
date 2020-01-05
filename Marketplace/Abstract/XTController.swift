//
//  XTController.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 29/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit
import MapKit



class XTController:UIViewController{
    
    
    
    // MARK: STATE
    
    var topView:UIView?
    var downView:UIView?
    var interval:TimeInterval = 1.0
    var updating = false
    
        
        func type() -> String{

            return String(describing: self)
            
        }
        
        lazy var literal:String = {
            
            
            
            var c = self as Any
            if let w = c as? NSObject{
                
                if let spr = (c as AnyObject).superclass{
                    c = (spr as AnyObject).superclass as Any
                    
                 
                } else {
                    print("Superclass not found")
                }
            }
            
            var s = String(describing: c)
            
            return s
            
        }()
    
    
    
    // MARK: ALPHA
    
    
    func ignition(){
        
        log("ignition")
        
        
        
    }
    
    
    func launch(){
        
        log("launch")
        
    }
    
    func adios(){
        
        log("adios")
        
    }
    
    
    
    
    
    
    
    
    // MARK: DISAPPEAR
    
    
    // WILL
    
    override func viewWillDisappear(_ animated: Bool) {
        
        if core.debug{
            
            print(literal + " viewWillDisappear SUPER CALL")
            
        }
        
    }
    
    
    // DID
    
    override func viewDidDisappear(_ animated: Bool) {
        
        adios()
        
        if core.debug{
            
            print(literal + " viewDidDisappear SUPER CALL")
            
        }
        
    }
    
    // MARK: DID LOAD
    
    //
    //   FUCKING DMITRI !!
    //
    
    override func viewDidLoad() {
        
        launch()
        
        if core.debug{
            
            print(literal + " viewDidLoad SUPER CALL")
            
        }
    }
    
    // MARK: APPEAR
    
    
    
    // WILL
    
    override func viewWillAppear(_ animated: Bool) {
        
        ignition()
        
        if core.debug{
            
            print(literal + " viewWillAppear SUPER CALL")
            
        }
    }
    
    // DID
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        
        if core.debug{
            
            print(self.description + " viewDidAppear SUPER CALL")
            
        }
    }
    
    
    // MARK: SETUP
    
    
    
    func add(_ view: UIView){
        self.view.addSubview(view)
    }
    
    
    
    // SET COLOR
    
    func color(_ color: UIColor){
        
        view.backgroundColor = color
        
    }
    
    
    
    // SET BACKGROUND
    
    
    func setBackground(image: UIImage, _ blur: UIBlurEffect.Style?){
        
        let b = UIImageView(image: image)
        b.tag = 2000
        view.addSubview(b)
        b.fillSuperview()
        b.layer.zPosition = view.layer.zPosition - 1
        
        log("background set")
        
        
        if let _ = blur{
            
            let br = UIVisualEffectView(effect: UIBlurEffect(style: blur!))
                br.tag = 2012
                b.addSubview(br)
                br.fillSuperview()
            
                log("blur set")
            
        }
        
    }
    
    
    // SET BLUR
    
    func setBlur(_ style: UIBlurEffect.Style){
        

        
        var isHere = false
        
        for case let b as UIImageView in view.subviews{
            if b.tag == 2000{
                
                for case let i as UIVisualEffectView in b.subviews{
                    if i.tag == 2012{
                        i.effect = UIBlurEffect(style: style)
                        isHere = true
                        log("blur found and updated")
                    }
                }
                
                if isHere == false{
                    let br = UIVisualEffectView(effect: UIBlurEffect(style: style))
                    br.tag = 2012
                    b.addSubview(br)
                    br.fillSuperview()
                    
                    log("blur added and updated")
                    
                }
            }
        }
        
        
        
    }
    
    // MARK: UPDATE
    
    @objc func update(){
        
        log("update")
        
        
    }
    
    

    
    
    
    
    
    // MARK: DELEGATIONS
    
    func addTextFieldDelegate(_ fields: [UITextField]){
        
        for f in fields{
            
            f.delegate = self as? UITextFieldDelegate
            
            log("field delegate set")
            
        }
        
    }
    
    
    func addMapDelegate(_ maps: [MKMapView]){
        
        for m in maps{
            
            m.delegate = self as? MKMapViewDelegate
            
            log("map delegate set tag~> " + String(m.tag))
            
        }
        
    }
    
    func addImagePickerDelegate(_ pickers: [UIImagePickerController]){
        
        for i in pickers{
            
            i.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
            
            log("image picker delegate set")
            
        }
        
    }
    
    
    func addPickerDelegate(_ pickers: [UIPickerView]){
        
        for p in pickers{
            
            p.delegate = self as? UIPickerViewDelegate
            
            log("picker delegate set tag~>>~ " + String(p.tag))
            
        }
        
    }
    
    func addSearchDelegate(_ bars: [UISearchBar]){
        
        for s in bars{
            
            s.delegate = self as? UISearchBarDelegate
            
            log("search delegate set tag~>>~ " + String(s.tag))
            
        }
        
    }
    
    
    func addTableDelegate(_ tables: [UITableView]){
        
        for t in tables{
            t.delegate = self as? UITableViewDelegate
            t.dataSource = self as? UITableViewDataSource
            
            log("table delegate set tag~>>~ " + String(t.tag))
            log("table datasource set")
        }
        
    }
    
    
    // MARK: AUTO
    
    func autoDelegate(){
        

        
    }
    
    
    // MARK: LOGS
    
    
    func log(_ msg: String){
        
        if core.logs == true {
            
            
            
            print(" ~>>> LOG " + String(core.logCounter) + " " + msg + " <<<~ ")
            core.logCounter += 1
            
        }
        
    }
    
    
    
    
    // MARK: INIT
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        modalPresentationStyle = .overFullScreen
        isModalInPresentation = true
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    func addBar(_ type: barType){
        
        let b = bar(type)
        view.addSubview(b)
        b.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor)
        topView = b
        
        log("bar added")
        
    }
    
    
    // MARK: ADDING VIEWS
    
    
    func addCenterView(_ v:UIView){
        
        v.tag = 2000
        add(v)
        v.centerInSuperview()
        
        log("center view added")
        
    }
    
    
    func addTable(_ table: UITableView){
        
        table.delegate = self as? UITableViewDelegate
        add(table)
        autoAnchor(table)
        
        
    }
    
    func addMap(_ map: MKMapView){
        
        map.delegate = self as? MKMapViewDelegate
        add(map)
        autoAnchor(map)
        
    }
    
    
    // MARK: ADDING IMAGES
    
    
    func addCenterImage(_ image: UIImage){
        
        let i = UIImageView(image: image)
        i.tag = 2000
        
        
        view.addSubview(i)
        i.centerInSuperview()
        
        log("center image added")
        
    }
    
    
    
    func addTopImage(_ image: UIImage){
        
        let i = UIImageView(image: image)
        i.contentMode = .scaleAspectFit
        
        i.tag = 1
        
        view.addSubview(i)
        
        if let v = topView{
            log("has top view")
          i.anchor(top: v.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor)
        } else {
            log("no top view")
          i.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor)
        }
        
        log("top image added")
        
        topView = i
    }
    
    
    
    
    
    
    
    // MARK: AUTO ANCHORING
    
    func anchor(_ view: UIView, top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, down: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?, pad: UIEdgeInsets?){
        
        
        
        
        self.view.addSubview(view)
        
        log("view added")
        
        
        if let p = pad{
            view.anchor(top: top, leading: left, bottom: down, trailing: right, padding: p)
            log("view anchored with padding")
        } else {
            view.anchor(top: top, leading: left, bottom: down, trailing: right)
            log("view anchored")
        }
        
        
    }
    
    
    
    func autoAnchor(_ v: UIView){
        
        log("view auto-anchor")
        
        view.addSubview(v)
        
        
        
        if let t = topView{
            v.anchor(top: t.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor)
            log("anchored to topView")
        } else {
            v.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor)
            log("anchored to view")
        }
        
    }
    
    
}
