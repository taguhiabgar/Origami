//
//  MenuViewController.swift
//  Origami
//
//  Created by Taguhi Abgaryan on 6/2/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import UIKit

class MenuViewController: BaseViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var journeyButton: UIButton!
    @IBOutlet weak var dailyButton: UIButton!
    @IBOutlet weak var exploreButton: UIButton!
    @IBOutlet weak var challengeButton: UIButton!
    @IBOutlet weak var buildButton: UIButton!
    @IBOutlet weak var solveButton: UIButton!
    
    // MARK: - Methods
    
    @IBAction func menuButtonAction(_ sender: UIButton) {
        switch sender.tag {
        case 5:
            performSegue(withIdentifier: "showSolver", sender: self)
        default:
            break
        }
    }
}
