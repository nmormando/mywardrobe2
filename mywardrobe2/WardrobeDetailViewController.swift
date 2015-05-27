//
//  WardrobeDetailViewController.swift
//  mywardrobe2
//
//  Created by nmormando on 5/11/15.
//  Copyright (c) 2015 nmormando. All rights reserved.
//

import UIKit

class WardrobeDetailViewController: UIViewController, UINavigationControllerDelegate, UITableViewDelegate, UITableViewDataSource
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
     
        
    }

    var wardrobeArray : [Wardrobe] = []
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var wardrobeDetailCell = tableView.dequeueReusableCellWithIdentifier("String", forIndexPath: indexPath) as! UITableViewCell
        return wardrobeDetailCell
    }
    

    
//    super.viewDidLoad()
//    
//    collegeTextField.text = college.name
//    locationTextField.text = college.location
//    studentTextField.text = String(college.students)
//    imageView.image = college.image
//    
//    imagePicker.delegate = self
//    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return wardrobeArray.count
    }

 }
