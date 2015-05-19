//
//  Wardrobe.swift
//  mywardrobe2
//
//  Created by ecfelice on 5/14/15.
//  Copyright (c) 2015 nmormando. All rights reserved.
//

import UIKit

class Wardrobe: UIViewController {

    
    var pantsName = ""
    var shirtsName = ""
    var accesoriesName = ""
    
    
    convenience init(pantsName: String, shirtsName: String, accesoriesName: String)
    {
        self.init()
        self.pantsName = pantsName
        self.shirtsName = shirtsName
        self.accesoriesName = accesoriesName
    }
    
    


}
