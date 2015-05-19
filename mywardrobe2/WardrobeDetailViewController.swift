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
    
    
    let imagePicker = UIImagePickerController()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
    }

    var wardrobeArray : [Wardrobe] = []
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var wardrobeDetailCell = tableView.dequeueReusableCellWithIdentifier("PantsCell", forIndexPath: indexPath) as! UITableViewCell
        
        return wardrobeDetailCell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return wardrobeArray.count
    }
    

    
    
    
    
    

 }
