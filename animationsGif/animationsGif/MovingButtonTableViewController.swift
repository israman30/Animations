//
//  MovingButtonTableViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 4/11/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class MovingButtonTableViewController: UIViewController {

    var location = CGPoint(x: 0, y: 0)
    
    @IBOutlet weak var person: UIImageView!
    
    @IBOutlet weak var backBtn: UIButton!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    // MARK: Moving button animation functions
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch: UITouch! = touches.first!
        location = touch.location(in: self.view)
        person.center = location
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch: UITouch! = touches.first!
        location = touch.location(in: self.view)
        person.center = location
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        person.center = CGPoint(x: 160, y: 330)
        person.layer.cornerRadius = 20
        person.layer.borderColor = UIColor.black.cgColor
        person.layer.borderWidth = 1
        
        backBtn.layer.cornerRadius = 23
        backBtn.layer.borderColor = UIColor.black.cgColor
        backBtn.layer.borderWidth = 2
        
        nextBtn.layer.cornerRadius = 23
        nextBtn.layer.borderColor = UIColor.black.cgColor
        nextBtn.layer.borderWidth = 2
      
    }
    
    // MARK: Unwind segue
    @IBAction func unwindToSecond(_:UIStoryboardSegue){}
}
