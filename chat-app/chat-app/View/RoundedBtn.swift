//
//  RoundedBtn.swift
//  chat-app
//
//  Created by Admin on 30.09.17.
//  Copyright © 2017 metasemenov. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedBtn: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }

    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
}
