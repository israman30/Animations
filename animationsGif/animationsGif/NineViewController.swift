//
//  NineViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 5/9/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class NineViewController: UIViewController {

    @IBOutlet weak var popUpView: UIView!
    
    @IBOutlet weak var actionbuttonOutlet: UIButton!
    
    @IBOutlet weak var effectSwitch: UISwitch!
    
    var originalCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        actionbuttonOutlet.layer.borderColor = UIColor.white.cgColor
        actionbuttonOutlet.layer.borderWidth = 3
        actionbuttonOutlet.layer.cornerRadius = 8
        
        popUpView.alpha = 0
        popUpView.layer.cornerRadius = 15
        popUpView.layer.shadowColor = UIColor.black.cgColor
        popUpView.layer.shadowOpacity = 1
        popUpView.layer.shadowOffset = CGSize.zero
        popUpView.layer.shadowRadius = 10
        
        originalCenter = popUpView.center
    }
    
    @IBAction func actionBtn(_ sender: Any) {
        
        if effectSwitch.isOn {
            
            popUpView.layer.anchorPoint = CGPoint(x: 0.5, y: 0)
            popUpView.center.y = popUpView.center.y - (popUpView.frame.height / 2)
            popUpView.transform = CGAffineTransform(rotationAngle: 1.8)
        
        } else {
        
            popUpView.transform = CGAffineTransform(scaleX: 0.5, y: 2)
        }
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: .allowUserInteraction, animations: {
            self.popUpView.transform = .identity
        }) { (success) in
            self.popUpView.center = self.originalCenter
            self.popUpView.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        }
        
        popUpView.alpha = 1
    }
    
    @IBAction func okBtn(_ sender: Any) {
        popUpView.alpha = 0
    }
    
    @IBAction func unwindToNine(_: UIStoryboardSegue){}
}
