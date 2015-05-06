//
//  WardrobeViewController.swift
//  mywardrobe2
//
//  Created by nmormando on 5/1/15.
//  Copyright (c) 2015 nmormando. All rights reserved.
//

import UIKit

class WardrobeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet weak var wardrobeTable: UITableView!
    
    var wardrobeArray = ["shirts", "pants", "shoes"]
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var wardrobeCell = tableView.dequeueReusableCellWithIdentifier("Wardrobe", forIndexPath: indexPath) as UITableViewCell
        wardrobeCell.textLabel?.text = wardrobeArray[indexPath.row]
        
        return wardrobeCell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return wardrobeArray.count
    }
  
}
