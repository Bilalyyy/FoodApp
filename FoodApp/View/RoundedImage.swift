//
//  RoundedImage.swift
//  FoodApp
//
//  Created by bilal on 23/12/2021.
//

import UIKit


class RoundedImage: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
    }
    
}
