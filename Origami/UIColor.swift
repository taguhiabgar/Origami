//
//  UIColor.swift
//  Origami
//
//  Created by Taguhi Abgaryan on 6/3/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        let red: CGFloat = CGFloat(arc4random() % 256) / 256.0
        let green: CGFloat = CGFloat(arc4random() % 256) / 256.0
        let blue: CGFloat = CGFloat(arc4random() % 256) / 256.0
        let alpha: CGFloat = CGFloat(arc4random() % 256) / 256.0
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}
