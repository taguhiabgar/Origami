//
//  BaseViewController.swift
//  Origami
//
//  Created by Taguhi Abgaryan on 6/3/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import UIKit

// This is the base view controller of all UIViewController classes in this project
class BaseViewController: UIViewController {
    
    // MARK: - Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
}
