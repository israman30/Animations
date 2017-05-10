//
//  OnceCardViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 5/10/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class OnceCardViewController: UIViewController {

    @IBOutlet weak var card: UIView!
    
    @IBOutlet weak var thumbsImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        card.layer.cornerRadius = 10
    }
    @IBAction func panCard(_ sender: UIPanGestureRecognizer) {
        let card = sender.view!
        let point = sender.translation(in: view)
        let xCenter = card.center.x - view.center.x
        
        card.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
        
        if xCenter > 0 {
            thumbsImageView.image = #imageLiteral(resourceName: "icons8-thumbs_up")
            thumbsImageView.tintColor = UIColor.green
        } else {
            thumbsImageView.image = #imageLiteral(resourceName: "icons8-thumbs_down")
            thumbsImageView.tintColor = UIColor.red
        }
        
        thumbsImageView.alpha = abs(xCenter) / view.center.x
        
        if sender.state == UIGestureRecognizerState.ended {
            UIView.animate(withDuration: 0.2) {
                card.center = self.view.center
            }
        }
    }

}
