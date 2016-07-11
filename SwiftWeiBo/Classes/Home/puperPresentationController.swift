//
//  puperPresentationController.swift
//  SwiftWeiBo
//
//  Created by scjy on 16/7/6.
//  Copyright © 2016年 hj. All rights reserved.
//

import UIKit

class puperPresentationController: UIPresentationController {

  internal  var puperFrame:CGRect?
    
    
    
    //试图将要展示时调用
    
    override func containerViewWillLayoutSubviews() {
        
        
        //遮罩试图
        
        let view = UIView(frame: UIScreen.mainScreen().bounds)
        
        
        
        view.backgroundColor = UIColor.grayColor()
        
        
        
        view.alpha = 0.3
        
        
        self.containerView?.insertSubview(view, atIndex: 0)
        
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(puperPresentationController.tap))
        
        
    view .addGestureRecognizer(tap)
        
        
        //展示的控制器
       // self.presentedView()?.frame = CGRectMake(100, 57, 200, 250)
         self.presentedView()?.frame = puperFrame!
    }
    
    
    
    
    func tap()  {
        
        
        self.presentedViewController.dismissViewControllerAnimated(true, completion: nil)
        
        
        
    }
    
    
    
    
    
    
    
    
}


