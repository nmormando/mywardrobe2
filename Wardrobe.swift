//
//  Wardrobe.swift
//  mywardrobe2
//
//  Created by ecfelice on 5/14/15.
//  Copyright (c) 2015 nmormando. All rights reserved.
//

import UIKit

class Wardrobe: UIViewController {

    
    var clothesType = ""
    
    convenience init(clothesType: String)
    {
        self.init()
        
        self.clothesType = clothesType
    }
    
    
}
