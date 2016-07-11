//
//  MainViewController.swift
//  swift新浪微博
//
//  Created by GG on 16/7/3.
//  Copyright © 2016年 GG. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
              /*
         
         *tinColor:tabbar字体的颜色
         
         *barTintColor：tabbar的颜色
         
         */
        
        
        self.tabBar.tintColor = UIColor.orangeColor()
        
        
       self.addTable()
        
        
    }
//添加中间按钮
    //将btn设置为全局变量
     let btn = UIButton(type: .Custom)
    
    private func addMidBtn(){
        
       
        
        btn.setBackgroundImage(UIImage(named: "tabbar_compose_button_highlighted"), forState:.Highlighted)
        
        btn.setBackgroundImage(UIImage(named: "tabbar_compose_button"), forState: .Normal)
        
        btn.setImage(UIImage(named: "tabbar_compose_icon_add"), forState: .Normal)
        
        btn.setImage(UIImage(named: "tabbar_compose_icon_add_highlighted"), forState: .Highlighted)
        
    let screenW = UIScreen.mainScreen().bounds.size.width
        
        
     let btnW = screenW  / CGFloat((self.viewControllers?.count)!)
        
        let btnH:CGFloat = 49
        
        let btnX:CGFloat = 2 * btnW
        
        
        let btnY:CGFloat = 0
        
        
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH)
        
        
        self.tabBar.addSubview(btn)
        
        btn.addTarget(self, action: #selector(MainViewController.clickBtn), forControlEvents: .TouchUpInside)
        
        
    }
    
    
    func clickBtn()  {
        
        
        print("点加号")
        
    }
    
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
        self.addMidBtn()
        
    }
    
    
    
    private func addTable(){
        
        self.addTabBarChildrenVC("HomeTableViewController", title: "首页", imageName: "tabbar_home",selectImageName:"tabbar_home_highlighted")
        
        
        
        self.addTabBarChildrenVC("MessageTableViewController", title: "消息", imageName: "tabbar_message_center",selectImageName:"tabbar_message_center_highlighted")
        
        
        
        self.addTabBarChildrenVC("AddViewController", title: "", imageName: "", selectImageName: "");
        
        
        self.addTabBarChildrenVC("DiscoverTableViewController", title: "发现", imageName: "tabbar_discover",selectImageName:"tabbar_discover_highlighted")
        
        
        self.addTabBarChildrenVC("ProfileTableViewController", title: "我", imageName: "tabbar_profile",selectImageName:"tabbar_profile_highlighted")
        

        
    }
    
    
    
    
    //私有  private
    private func addTabBarChildrenVC(className:String,title:String,imageName:String,selectImageName:String){
        
        /*
         
         
         动态获取命名空间：命名空间就是用来区分完全相同的两个类
         举个例：
         
         一班二班都有叫小明的，我在一班喊一声小明，一班就是命名区间
         
         
         */
        
        let namePace = NSBundle.mainBundle().infoDictionary!["CFBundleExecutable"] as! String
        
       // print("/////\(namePace)")
        
        
        /*
         
        将字符串类名转化为类
         
         1.动态的获取命名空间
         2.拼接类名：命名空间+ .+ 类名
         3.将拼接好的类名转化为一个类
         4。指定是哪一种类
         5.利用该类创建对象
         
         
         
         
         
         
         */
        
        
        
        let classname:AnyClass = NSClassFromString(namePace + "."+className)!
        
        //指定className是一个控制器类
        
        let classVC = classname as! UIViewController.Type
        
        //用转化过来的类创建一个对象
       
        let tempVC = classVC.init()

       // print(self)
        
        
        tempVC.title = title
        
       tempVC.tabBarItem.image = UIImage(named: imageName)
        
        tempVC.tabBarItem.selectedImage = UIImage(named: selectImageName)
        
        let nav = UINavigationController(rootViewController:tempVC)
        
        
        
       // [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} forState:UIControlStateNormal];
        
       
        
       
        
        
        tempVC.tabBarItem.setTitleTextAttributes([NSFontAttributeName:UIFont.systemFontOfSize(15)], forState: .Normal)
        
        self.addChildViewController(nav)
        
        
        
        
        
        
        
        
    }

    

    
    
    
    
    
    
    
}













