//
//  DetailCarteViewController.swift
//  FoodApp
//
//  Created by bilal on 23/12/2021.
//

import UIKit

class DetailCarteViewController: UIViewController {
    
    @IBOutlet weak var imageTop: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblOrigin: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    
    var food : Food!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageTop.image = food.image
        imageTop.layer.cornerRadius = 10
        
        lblName.text = food.name
        lblOrigin.text = food.country
        lblDescription.text = food.desc
    }
}
