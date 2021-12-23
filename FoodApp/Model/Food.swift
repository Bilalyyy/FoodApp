//
//  Food.swift
//  FoodApp
//
//  Created by bilal on 23/12/2021.
//

import UIKit

struct Food {

    var name: String
    var desc: String
    var country: String
    var imageStr: String
    
    var image : UIImage? {
        return UIImage(named: imageStr)
    }

}
