//
//  TenViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 5/10/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class TenViewController: UIViewController {
    
    @IBOutlet weak var addItemView: UIView!

    @IBOutlet weak var visualEffectView: UIVisualEffectView!
    
    @IBOutlet weak var plusBtn: UIButton!
    
    var effect: UIVisualEffect!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        effect = visualEffectView.effect
        visualEffectView.effect = nil
        
        addItemView.layer.cornerRadius = 6
        
        plusBtn.layer.cornerRadius = 10
        plusBtn.layer.borderColor = UIColor.white.cgColor
        plusBtn.layer.borderWidth = 8

    }
    
    func animateIn(){
        self.view.addSubview(addItemView)
        addItemView.center = self.view.center
        
        addItemView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        addItemView.alpha = 0
        
        UIView.animate(withDuration: 0.4) { 
            self.visualEffectView.effect =  self.effect
            self.addItemView.alpha = 1
            self.addItemView.transform = CGAffineTransform.identity
        }
    }
    
    func animateOut(){
        UIView.animate(withDuration: 0.3, animations: { 
            self.addItemView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            self.addItemView.alpha = 0
            self.visualEffectView.effect = nil
        }) { (success) in
            self.addItemView.removeFromSuperview()
        }
    }

    @IBAction func addBtn(_ sender: Any) {
        animateIn() 
    }
    @IBAction func dismissPopUp(_ sender: Any) {
        animateOut()
    }
    
    @IBAction func unwindToTen(_: UIStoryboardSegue){}
}
