//
//  ContactDetailViewController.swift
//  FoodApp
//
//  Created by bilal on 23/12/2021.
//

import UIKit

class ContactDetailViewController: UIViewController {
    
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var numberLbl: UILabel!
    @IBOutlet weak var adresseLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = "Asian Street Food"
        numberLbl.text = "Tel: +33561793425"
        adresseLbl.text = "Adresse: 26 chemin de Laurier\nRose 31100 Toulouse"
    }

}
