//
//  OnceCardViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 5/10/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class OnceCardViewController: UIViewController {

    @IBOutlet weak var card: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        card.layer.cornerRadius = 10
    }
    @IBAction func panCard(_ sender: UIPanGestureRecognizer) {
        
    }

}
