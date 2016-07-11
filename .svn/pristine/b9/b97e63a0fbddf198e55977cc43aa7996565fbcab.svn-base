//
//  noLoginView.swift
//  SwiftWeiBo
//
//  Created by scjy on 16/7/5.
//  Copyright © 2016年 hj. All rights reserved.
//

import UIKit

class noLoginView: UIView {

  
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        //添加子试图
        self.addSubview(self.makeBZimage)
        self.addSubview(self.cireImage)
        self.addSubview(self.noLable)
        self.addSubview(self.iconView)
        
        
        //给试图添加布局
        self.addLayout()
        
    }
    
    //mark 流接口设置各个模块
    
   func setNologinIsHome(isHome:Bool,imageName:String,text:String)  {
        
    self.cireImage.hidden = !isHome
    
    self.iconView.image = UIImage.init(named: imageName)
    
    
    self.noLable.text = text
        
    if isHome == true {
        
        self.startAndmit()
        
    }
    
    
    
    
    }
    
  
    func startAndmit() {
        //创建一种核心动画
        
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        
        animation.toValue = 2 * M_PI
        
        animation.duration = 7
        
        animation.repeatCount = 2
        
        animation.removedOnCompletion = false
        
        self.cireImage.layer.addAnimation(animation, forKey: nil)
    }
    
    
    
    //给试图添加布局
    
    
    func addLayout() {
        
        
        self.makeBZimage.snp_makeConstraints { (make) in
            
            make.edges.equalTo(self).inset(0)
            
        }
 
        self.cireImage.snp_makeConstraints { (make) in
            
            make.center.equalTo(self)
            
            
        }

        self.noLable.snp_makeConstraints { (make) in
            
            
            make.top.equalTo(self.cireImage.snp_bottom)
            
            make.width.equalTo(self.cireImage.frame.width)
            make.centerX.equalTo(cireImage.snp_centerX)
            
        }

        
        self.iconView.snp_makeConstraints { (make) in
            
            
            make.center.equalTo(self)
            
        }

        
    }
    
   
    
    
    
   //懒加载创建对象
    
    private lazy var makeBZimage:UIImageView = {
            
            
            
            let uimag = UIImageView()
            
            
            uimag.image = UIImage.init(named: "visitordiscover_feed_mask_smallicon")
            
            
            return uimag
            
        }()
    
    

       //懒加载需要闭包
    private lazy var cireImage:UIImageView = {
        
        
        let image = UIImageView(image: UIImage.init(named: "visitordiscover_feed_image_smallicon"))
        
        
        
        return image
      //闭包
    }()
    
    private lazy var noLable:UILabel = {
        
        
        let lable = UILabel()
        
        lable.text = "额外的sdsddsdsc定位为单位上电视的城市的"
        
        lable.font = UIFont .systemFontOfSize(17)
        
        lable.numberOfLines = 0
        
        lable.textColor = UIColor.darkGrayColor()
        
        
        return lable
        
        
    }()
    
    private lazy var iconView:UIImageView = {
        
        
        let image = UIImageView(image: UIImage.init(named: "visitordiscover_feed_image_house"))
        
        
        
        
        return image
        
    }()
    
    
    
    
    
    
    
    /*
     *如果子类中有required的构造方法，子类一旦重写任何构造方法，都必须实现父类中required修饰的方法
     
     *从xib加载试图时调用
     */
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}
















    
    








