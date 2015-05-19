//
//  WardrobeViewController.swift
//  mywardrobe2
//
//  Created by nmormando on 5/1/15.
//  Copyright (c) 2015 nmormando. All rights reserved.
//

import UIKit

class WardrobeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIImagePickerControllerDelegate,UINavigationControllerDelegate
{
    @IBOutlet weak var shoesImageView: UIImageView!
    @IBOutlet weak var wardrobeTable: UITableView!
   
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        imagePicker.delegate = self
        
        var type = ["pants", "shirts", "shoes"]

    }
    
    //append shoes shirt accessories shoes to wardrobe array
    
    
    
    
    var wardrobeArray : [Wardrobe] = []
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var wardrobeCell = tableView.dequeueReusableCellWithIdentifier("Wardrobe", forIndexPath: indexPath) as! UITableViewCell
        wardrobeCell.textLabel!.text = wardrobeArray[indexPath.row].pantsName
        wardrobeCell.textLabel?.textAlignment = NSTextAlignment.Center
        
        return wardrobeCell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return wardrobeArray.count
    }
    
    func cameraButtonTapped()
    {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)
        {
            imagePicker.sourceType = UIImagePickerControllerSourceType.Camera
            presentViewController(imagePicker, animated: true, completion: nil)
        }
        
    }
    
    
    @IBAction func buttonTapped(sender: UIButton)
    {
        var alert = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)
        
        var cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        
        alert.addAction(cancelAction)
        
        var libraryAction = UIAlertAction(title: "Library", style: .Default) { (action) -> Void in
            self.imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
            self.presentViewController(self.imagePicker, animated: true, completion: nil)
        }
        
        alert.addAction(libraryAction)
        
        var cameraAction = UIAlertAction(title: "Camera", style: .Default) { (action) -> Void in
            self.cameraButtonTapped()
        }
        
        alert.addAction(cameraAction)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject])
    {
        imagePicker.dismissViewControllerAnimated(true, completion: {
            var selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
            self.shoesImageView.image = selectedImage
            println("image selected")})
    }


}
