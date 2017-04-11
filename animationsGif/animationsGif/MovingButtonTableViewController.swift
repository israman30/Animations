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
      
    }
    
    @IBAction func unwindToSecond(_:UIStoryboardSegue){}
}
