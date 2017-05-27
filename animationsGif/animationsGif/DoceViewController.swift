//
//  DoceViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 5/19/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class DoceViewController: UIViewController {
    
    @IBOutlet weak var gradientView: UIImageView!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        animateBck()
    }
    
    func animateBck(){
        UIView.animate(withDuration: 15, delay: 0, options: [.autoreverse, .curveLinear, .repeat], animations: {
            
            let x = -(self.gradientView.frame.width - self.view.frame.width)
            self.gradientView.transform = CGAffineTransform(translationX: x, y: 0)
        })
    }
    
    @IBAction func unwindToDoce(_: UIStoryboardSegue){}
    
}
