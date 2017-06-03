//
//  UIView.swift
//  Origami
//
//  Created by Taguhi Abgaryan on 6/3/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import UIKit

extension UIView {
    
    func rotate(angle: CGFloat) {
        self.transform = CGAffineTransform(rotationAngle: angle)
    }
}
