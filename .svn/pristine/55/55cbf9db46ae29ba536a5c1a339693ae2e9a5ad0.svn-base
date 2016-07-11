//
//  MenViewController.swift
//  SwiftWeiBo
//
//  Created by scjy on 16/7/6.
//  Copyright © 2016年 hj. All rights reserved.
//


import UIKit

class MenViewController: UIViewController {

    
    override func viewDidLoad() {
        
        
        self.view.backgroundColor = UIColor.grayColor()
       // self.view.alpha = 0.5
        
        
        self.layout()
        
        
        
    }
    
    
    func layout() {
        
        
        
        let ImageView = UIImageView()
        
        self.view.addSubview(ImageView)
        //Image.image =
        
        var image = UIImage(named: "popover_background")
        
       
        //image = image?.resizableImageWithCapInsets(UIEdgeInsetsMake((image?.size.height)!/2, 0, (image?.size.height)!/2, 0))
        
        image = image?.resizableImageWithCapInsets(UIEdgeInsetsMake((image?.size.height)!/2, 0, (image?.size.height)!/2, 0), resizingMode: .Stretch)
        
        ImageView.image = image
        ImageView.snp_makeConstraints { (make) in
        
            
            make.edges.equalTo(self.view).inset(0)
            
            
        }
        
        
        
        
      //tableView
        
    
        let tableView = UITableView(frame: CGRectMake(0, 0, 0, 0), style: .Grouped)
        
        
        self.view.addSubview(tableView)
        
        
        
        tableView.snp_makeConstraints { (make) in
            
            
            make.edges.equalTo(ImageView).inset(20)
            
        }
        
        
        
        
    }
    
    
    
        
    
    
}
