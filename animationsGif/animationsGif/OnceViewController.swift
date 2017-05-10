//
//  OnceViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 5/10/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class OnceViewController: UIViewController {
    
    @IBOutlet weak var bckGImageView: UIImageView!

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descLabel: UILabel!
    
    @IBOutlet weak var goBtn: UIButton!
    
    @IBOutlet weak var nextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bckGImageView.alpha = 0
        titleLabel.alpha = 0
        descLabel.alpha = 0
        goBtn.alpha = 0
        nextLabel.alpha = 0
     
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1, animations: {
            self.bckGImageView.alpha = 1
        }) { (true) in
            
            self.showLabel()
        }
    }
    
    func showLabel(){
        UIView.animate(withDuration: 1, animations: {
            self.titleLabel.alpha = 1
        }, completion: { (true) in
            self.showDescLabel()
        })
    }
    
    func showDescLabel(){
        UIView.animate(withDuration: 1, animations: { 
            self.descLabel.alpha = 1
        }) { (true) in
            self.showBtnTxt()
        }
    }
    
    func showBtnTxt(){
        UIView.animate(withDuration: 1) { 
            self.goBtn.alpha = 1
            self.nextLabel.alpha = 1
        }
    }
}















