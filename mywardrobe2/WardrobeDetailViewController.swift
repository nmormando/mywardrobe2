//
//  WardrobeDetailViewController.swift
//  mywardrobe2
//
//  Created by nmormando on 5/11/15.
//  Copyright (c) 2015 nmormando. All rights reserved.
//

import UIKit

class WardrobeDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var wardrobeDetailCell = tableView.dequeueReusableCellWithIdentifier("String", forIndexPath: indexPath) as! UITableViewCell
        return
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        //return wardrobeArray.count
    }
    

    
    
    
    
    

 }
