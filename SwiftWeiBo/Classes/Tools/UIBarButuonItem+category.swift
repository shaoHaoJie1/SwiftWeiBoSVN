//
//  UIBarButuonItem+category.swift
//  SwiftWeiBo
//
//  Created by scjy on 16/7/6.
//  Copyright © 2016年 hj. All rights reserved.
//

import Foundation

import UIKit

extension UIBarButtonItem{
    
    func customBarBtn(imageName:String,tag:AnyObject?,select:Selector) -> UIBarButtonItem {
        
        
        let btn = UIButton(type: .Custom)
        
        
        btn.setBackgroundImage(UIImage(named: imageName), forState: .Normal)
        
        
        btn.setBackgroundImage(UIImage(named: imageName + "_highlighted"), forState: .Highlighted)
        
        btn.frame = CGRectMake(0, 0, 40, 40)
        
        
        btn.addTarget(tag, action: select, forControlEvents: .TouchUpInside)
        
        
        let btn1 = UIBarButtonItem(customView: btn)
        
        
        
       return btn1
        
    }
    
    
    
    
}



