//
//  CircleImg.swift
//  chat-app
//
//  Created by Admin on 02.10.17.
//  Copyright © 2017 metasemenov. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImg: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }

    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
}
