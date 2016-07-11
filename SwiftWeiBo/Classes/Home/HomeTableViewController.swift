//
//  HomeTableViewController.swift
//  swift新浪微博
//
//  Created by GG on 16/7/3.
//  Copyright © 2016年 GG. All rights reserved.
//

import UIKit
let kMenuView = "KMenuViewShowHide"

class HomeTableViewController: BaseTableViewController{

    override func viewDidLoad() {
        super.viewDidLoad()

       self.loginView?.setNologinIsHome(true, imageName: "visitordiscover_feed_image_house", text: "关注一些人，回这里看看有什么惊喜")
       
        
      
     
      self.setTitleView()
        
        
        //监听菜单栏的显示与消失
        
      NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(HomeTableViewController.change), name: kMenuView, object: nil)
        
        
        
        
        
        
        
    }
  
    func change() {
        
        let title = self.navigationItem.titleView as! titleBututton
        
        
        title.selected = !title.selected
        
        
        
    }
    
   
    
    
    
    
    //设置titleView
func setTitleView()  {
        
        
        if self.userLogin == true
        {
            
            let btn = titleBututton(type: .Custom)
            
            btn.setTitle("涅槃观光", forState: .Normal)
            
            btn.sizeToFit()
            btn.setTitleColor(UIColor.blackColor(), forState:.Normal)
            self.navigationItem.titleView = btn
            
            
            btn.addTarget(self, action:#selector(HomeTableViewController.clickbtn(_:)), forControlEvents: .TouchUpInside)
            
            
            
            
            
          self.navigationItem.leftBarButtonItem = UIBarButtonItem().customBarBtn("navigationbar_friendattention", tag: self, select: #selector(HomeTableViewController.left))
            
            
              self.navigationItem.rightBarButtonItem = UIBarButtonItem().customBarBtn("navigationbar_pop", tag: self, select: #selector(HomeTableViewController.right))
            
        }
    
        
        
}
    
    
func right()  {
    
    let sb = UIStoryboard(name: "Storyboard", bundle: nil)
    
    
    //通过标示符找到
   // sb.instantiateViewControllerWithIdentifier("")
    
    let orcodVC =  sb.instantiateInitialViewController()
    
    
    self.presentViewController(orcodVC!, animated: true, completion: nil)
    
    
    
    }
    
func left()  {
        print("点击←")
    }

    
func clickbtn(btn:UIButton)  {
        
        btn.selected = !btn.selected
    
    
    
    let mVC = MenViewController()
    
    
    //mVC.modalTransitionStyle =
    
    
    
    
    //设置模态展现样式
    // 若自定义，模态控制器会直接显示在当前控制器的上面
    mVC.modalPresentationStyle = .Custom
    
    
    //因为在代理方法里自定义，所以挂代理
    
    
    mVC.transitioningDelegate = self.popur

    
    
    self.presentViewController(mVC, animated: true, completion: nil)
    
    
    
    
    
    
   
    
    
        
}
    
    
    //private var popur = PoperAnimationController()
    
    
    
    private  lazy var popur:PoperAnimationController = {
        
        
        let popur = PoperAnimationController()
        
        popur.frame = CGRectMake(100, 57, 200, 250)
        
        return popur
        
    }()
    
    

//    
//    var ispresent = false
    //移除通知
    override func delete(sender: AnyObject?) {
        
        NSNotificationCenter.delete(self)
        
        
    }
    
    
    
    

    
    
    
 
}





