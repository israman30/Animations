//
//  ThirdTeenViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 5/26/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class ThirdTeenViewController: UIViewController {
    
    @IBOutlet weak var emailTxtFld: UITextField!

    @IBOutlet weak var passwordTxtFld: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTxtFld.center.x -= view.bounds.width
        passwordTxtFld.center.x -= view.bounds.width

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.5, delay: 0.3, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.5, options: [.curveEaseOut], animations: {
            
            self.emailTxtFld.center.x += self.view.bounds.width
            
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.4, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.5, options: [.curveEaseOut], animations: {
            
            self.passwordTxtFld.center.x += self.view.bounds.width
            
        }, completion: nil)
        
        UIView.animate(withDuration: 2.0, delay: 0.5, animations: {
            self.view.backgroundColor = UIColor.yellow
        })
        
    }

  
}
