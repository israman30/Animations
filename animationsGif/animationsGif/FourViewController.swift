//
//  FourViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 4/11/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class FourViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func goBtn(_ sender: Any) {
        let button = sender as! UIButton
        let bounds = button.bounds
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: .curveEaseInOut, animations: {
            
            button.bounds = CGRect(x: bounds.origin.x - 30, y: bounds.origin.y, width: bounds.size.width + 60, height: bounds.size.height)
        }) { (succes:Bool) in
            
            if succes {
                
                UIView.animate(withDuration: 0.5, animations: {
                    button.bounds = bounds
                    
                })
            }
        }
    }
    
    // MARK: Unwind to four VC
    @IBAction func unwindToFour(_: UIStoryboardSegue){}
}
