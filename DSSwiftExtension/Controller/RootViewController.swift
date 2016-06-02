//
//  RootViewController.swift
//  DSSwiftExtension
//
//  Created by dasheng on 16/6/2.
//  Copyright © 2016年 dasheng. All rights reserved.
//

import Foundation
import UIKit

class RootViewController:  UITableViewController{
    
    
    let items: NSDictionary = ["Foundation":["NSString"],"UIKits":["UIViewFrame"]]
    
    
    
    // MARK: - lifeMethon
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Mycell")
        self.tableView.reloadData()
    }
    
    
    // MARK: - Delegate
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        let sections: Int = items.allKeys.count
        
        return sections
    }


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let rows: Int = (items.objectForKey(items.allKeys[section])?.count)!
        
        return rows
    }

    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let titleStr: NSString = Array(items.allKeys)[section] as! NSString
        
        return titleStr as String
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Mycell", forIndexPath: indexPath)
        
        let titleArray: NSArray = items.objectForKey(Array(items.allKeys)[indexPath.section] as! NSString) as! NSArray
        let titleStr: NSString = titleArray[indexPath.row] as! NSString
        
        cell.textLabel!.text = titleStr as String
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let titleArray: NSArray = items.objectForKey(Array(items.allKeys)[indexPath.section] as! NSString) as! NSArray
        let titleStr: NSString = titleArray[indexPath.row] as! NSString
        
        let className: NSString = titleStr.stringByAppendingString("ViewController")
        
        let controller: UIViewController = NSObject.fromClassName(className as String) as! UIViewController;
        
        self.navigationController?.pushViewController(controller, animated: true)
    }
}