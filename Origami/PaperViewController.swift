//
//  PaperViewController.swift
//  Origami
//
//  Created by Taguhi Abgaryan on 6/3/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import UIKit

class PaperViewController: BaseViewController {
    
    // MARK: - Lifecycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        drawPaper()
    }
    
    func drawPaper(rows: Int = Constants.paperRows, columns: Int = Constants.paperColumns) {
        
        func triangle(origin: CGPoint, side: CGFloat, left: Bool) -> UIImageView {
            let triangle = UIImageView(image: left ? #imageLiteral(resourceName: "triangleleft") : #imageLiteral(resourceName: "triangleright"))
            let h: CGFloat = side
            let w: CGFloat = equilateralTriangleHeight(side: h)
            triangle.frame = CGRect(x: origin.x, y: origin.y, width: w, height: h)
            triangle.image = triangle.image?.withRenderingMode(.alwaysTemplate)
            return triangle
        }
        
        let triangleHeight = view.frame.width / CGFloat(columns)
        let triangleSide: CGFloat = equilateralTriangleSide(height: triangleHeight)
        
        for row in 0..<rows {
            for col in 0..<columns {
                let origin = CGPoint(x: triangleHeight * CGFloat(col), y: triangleSide / 2.0 * CGFloat(row - 1))
                let triangleImageView = triangle(origin: origin, side: triangleSide, left: col % 2 != row % 2)
                triangleImageView.tintColor = .random()
                view.addSubview(triangleImageView)
            }
        }
    }
    
    // MARK: - Methods
    
    func equilateralTriangleHeight(side: CGFloat) -> CGFloat {
        return sqrt(3.0) * side / 2.0
    }
    
    func equilateralTriangleSide(height: CGFloat) -> CGFloat {
        return 2.0 * height / sqrt(3.0)
    }
    
}
