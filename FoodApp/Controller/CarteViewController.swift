//
//  CarteViewController.swift
//  FoodApp
//
//  Created by bilal on 23/12/2021.
//

import UIKit

class CarteViewController: UIViewController {
    
    
    @IBOutlet var imagesGird: [RoundedImage]!
    
    var foods = Datas.get.foods
    var tag : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagesGird.forEach { image in
            
            image.image = foods[image.tag].image
            image.isUserInteractionEnabled = true
            image.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imagePressed)))
        }
    }
    
    @objc func imagePressed(_ gesture: UITapGestureRecognizer) {
        guard let tag = gesture.view?.tag else { return }
        self.tag = tag
        performSegue(withIdentifier: "GoDetailCarte", sender: nil)
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoDetailCarte" {
            guard tag != nil else {return}
            if let nextControler = segue.destination as? DetailCarteViewController {
                nextControler.food = Datas.get.foods[tag!]
            }
        }
    }


}
