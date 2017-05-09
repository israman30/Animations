//
//  OchoViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 5/9/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class OchoViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonView.layer.cornerRadius = 22
        
    }

    @IBAction func toggleMenu(_ sender: Any) {
        
        if buttonView.transform == CGAffineTransform.identity {
            UIView.animate(withDuration: 1, animations: {
            self.buttonView.transform = CGAffineTransform(scaleX: 11, y: 11)
            self.menuView.transform = CGAffineTransform(translationX: 0, y: -57)
                self.menuBtn.transform = CGAffineTransform(rotationAngle: self.radiant(180))
            }) { (true) in
            }
        } else {
            UIView.animate(withDuration: 1, animations: {
                self.buttonView.transform = .identity
                self.menuView.transform = .identity
                self.menuBtn.transform = .identity
            }) { (true) in
                //..
            }
        }
    }
    
    func radiant(_ degree:Double)-> CGFloat {
        return CGFloat(degree * .pi / degree)
    }
 
}
