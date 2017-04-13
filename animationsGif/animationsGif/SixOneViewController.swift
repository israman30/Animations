//
//  SixOneViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 4/12/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class SixOneViewController: UIViewController {
    
    @IBOutlet weak var dismissBtn: UIButton!
    
    @IBOutlet weak var backBtn: UIButton!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dismissBtn.layer.cornerRadius = dismissBtn.frame.size.width / 2
        
        backBtn.layer.cornerRadius = 23
        backBtn.layer.borderColor = UIColor.white.cgColor
        backBtn.layer.borderWidth = 2
        
        nextBtn.layer.cornerRadius = 23
        nextBtn.layer.borderColor = UIColor.white.cgColor
        nextBtn.layer.borderWidth = 2
    }
    
    
    // MARK: Dismiss action button
    @IBAction func dismissToPrevious(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
