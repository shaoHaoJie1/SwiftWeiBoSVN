//
//  CordeViewController.swift
//  SwiftWeiBo
//
//  Created by scjy on 16/7/7.
//  Copyright © 2016年 hj. All rights reserved.
//

import UIKit


import AVFoundation




class CordeViewController: UIViewController {

    //tabbar
    @IBOutlet weak var customTabBar: UITabBar!
    
   //
    @IBOutlet weak var top: NSLayoutConstraint!
    
    @IBOutlet weak var Truetop: NSLayoutConstraint!
    
    @IBOutlet weak var trueTop: NSLayoutConstraint!
    
    //scnanBGView的高
    @IBOutlet weak var sanBGViewHeight: NSLayoutConstraint!
    
    //
    
    @IBOutlet weak var chongjiboView: UIImageView!
    
    
    
    //动画要在试图完全显示之后调用
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        
         self.startScan()
        
        self.startAn()
        
        
    }
    
    //开始动画
    
   private func startAn()  {
        
    //先让冲击波处于试图的最上边
    self.trueTop.constant = -self.sanBGViewHeight.constant
    
    //更新约束
    
    self.view.layoutIfNeeded()
    
    
    
    
    
    
    UIView .animateWithDuration(3) {
        
        //设置重复次数
        
        UIView.setAnimationRepeatCount(MAXFLOAT)
        
        
        
        //设置冲击波的终点
        
        self.trueTop.constant = self.sanBGViewHeight.constant
        
        //更新约束
        
        self.view.layoutIfNeeded()
        
    }
    
        
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    self.customTabBar.selectedItem = self.customTabBar.items![0]
    
   
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //关闭
    
    @IBAction func Close(sender: AnyObject) {
        
        
        self.dismissViewControllerAnimated(false, completion: nil)
        
        
        
        
    }
    
   
//1.获取到扫描框架
    private lazy var session:AVCaptureSession  = AVCaptureSession()
        
        
//2获取到输入设备
    private lazy var inputDevice:AVCaptureDeviceInput? = {
        
        let device = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
        
        
        do{
            
            return try! AVCaptureDeviceInput(device: device)
            
            
        }catch{
            
            
            print(error)
            
            
            return nil
            
            
        }
        
        
        
    }()
    
        
        
//3.获取到输出设备
    private lazy var outPut:AVCaptureMetadataOutput = AVCaptureMetadataOutput()
//4.获取到预览图层
    private lazy var previewLayer:AVCaptureVideoPreviewLayer = {
        
        let layer = AVCaptureVideoPreviewLayer(session: self.session)
        
        layer.frame = self.view.frame
        
        
//5. 设置填充模式,不设置填充模式，4s可能会出现问题
layer.videoGravity = AVLayerVideoGravityResizeAspectFill
        
        
        
        return layer
        
    }()
    
    
    
    
    
    
//开始扫描
    
private func startScan(){
        
//1.判断是否支持输入设备
        
        
        if self.session.canAddInput(self.inputDevice) == false {
            
            
            return
            
        }
        if self.session.canAddOutput(self.outPut) == false {
            
            
            return
            
        }
        
        //3.添加输入设备
        
        self.session.addInput(self.inputDevice)
        
        //4添加输出设备
        
        self.session.addOutput(self.outPut)
        
        
        //5。设置输出设备支持类型
        
        outPut.metadataObjectTypes = outPut.availableMetadataObjectTypes
        
        
            
        
        //6.设置代理用于获取扫描的内容
      
        outPut.setMetadataObjectsDelegate(self, queue:  dispatch_get_main_queue())
        
       
        
        
        //7.添加图层
        self.view.layer.insertSublayer(self.previewLayer, atIndex: 0)
        
        //8.开始扫描
        
        self.session.startRunning()
        
        
    }
    
    
}


extension CordeViewController:UITabBarDelegate,AVCaptureMetadataOutputObjectsDelegate
{
    
    
    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        
      
        
        self.sanBGViewHeight.constant = item.tag == 0 ? 300 : 300*0.5
        
        
        
        self.chongjiboView.layer.removeAllAnimations()
        
        
        self.startAn()
        
        
    }
    
    //获取
    func captureOutput(captureOutput: AVCaptureOutput!, didOutputMetadataObjects metadataObjects: [AnyObject]!, fromConnection connection: AVCaptureConnection!){
        
        
        print(metadataObjects.last)
        
        
        
    }
    
}

