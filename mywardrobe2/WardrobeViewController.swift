//
//  WardrobeViewController.swift
//  mywardrobe2
//
//  Created by nmormando on 5/1/15.
//  Copyright (c) 2015 nmormando. All rights reserved.
//

import UIKit


var wardrobeArray : [Wardrobe] = []
var type = ["pants", "shirts", "shoes"]

class WardrobeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIImagePickerControllerDelegate,UINavigationControllerDelegate
{
    @IBOutlet weak var editButton: UIBarButtonItem!
    @IBOutlet weak var shoesImageView: UIImageView!
    @IBOutlet weak var wardrobeTable: UITableView!
   
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        imagePicker.delegate = self
        
       
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var wardrobeCell = tableView.dequeueReusableCellWithIdentifier("Wardrobe", forIndexPath: indexPath) as! UITableViewCell
        wardrobeCell.textLabel!.text = type[indexPath.row]
        wardrobeCell.textLabel?.textAlignment = NSTextAlignment.Center
        
        return wardrobeCell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return type.count
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

    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.Delete
        {
            wardrobeArray.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }

    @IBAction func plusButtonTapped(sender: UIBarButtonItem)
    {
        var alert = UIAlertController(title: "Add Clothing Category", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        
        var cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
        alert.addAction(cancelAction)
        
        var addAction = UIAlertAction(title: "Add", style: UIAlertActionStyle.Default) { (action) -> Void in
            var categoryTextField = alert.textFields?[0] as! UITextField
            
            self.wardrobeArray.append(Wardrobe(clothesType: categoryTextField.text))
            self.wardrobeTable.reloadData()
        }
        
        alert.addAction(addAction)
        
        alert.addTextFieldWithConfigurationHandler { (textField) -> Void in textField.placeholder = "Add New Category Here"}
        
        self.presentViewController(alert, animated: true, completion: nil)
    }

    
    
    func tableView(tableView:UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool
    {
        return true
    }
    
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
    {
        var wardrobe = wardrobeArray[sourceIndexPath.row]
        wardrobeArray.removeAtIndex(sourceIndexPath.row)
        wardrobeArray.insert(wardrobe, atIndex: destinationIndexPath.row)
    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var dvc = segue.destinationViewController as! WardrobeDetailViewController
        var index = wardrobeTable.indexPathForSelectedRow()?.row
        dvc.wardrobeDVC = wardrobeArray[index!]
        
    }
    
    
    
    
    
    
    
    
}
