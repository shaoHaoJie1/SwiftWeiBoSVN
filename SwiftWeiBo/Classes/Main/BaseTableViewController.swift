//
//  BaseTableViewController.swift
//  SwiftWeiBo
//
//  Created by scjy on 16/7/5.
//  Copyright © 2016年 hj. All rights reserved.
//

import UIKit

class BaseTableViewController: UITableViewController {

    //判断登录状态
    
    
    var userLogin = true
    
    
    var  loginView:noLoginView?
    /*
     当使用到self.view且self.view为空时调用
     
     
     
     */
    
    override func loadView() {
        
        
        if userLogin == true {
            //调用父类的loadView加载控制器的试图
            
            super.loadView()
            
            
        }else{
            
            
            loginView = noLoginView()
            
            loginView!.backgroundColor = UIColor.whiteColor()
            
            
            self.view =  loginView
            
            
            
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "注册", style: .Plain, target: self, action: #selector(clickright))
            
            self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "登录", style: .Plain, target: self, action: #selector(clickleft))
            
        }
        
        
        
        
    }
    
    func clickright(){
        
        
        print("注册")
    }
    
    func clickleft(){
        
       print("登录")
        
        userLogin = true
        
    }
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
      
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
