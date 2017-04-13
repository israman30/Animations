//
//  SixViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 4/12/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class SixViewController: UIViewController, UIViewControllerTransitioningDelegate {

    @IBOutlet weak var menuBtn: UIButton!
    
    let transition = TransitionVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuBtn.layer.cornerRadius = menuBtn.frame.size.width / 2
    }

    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = menuBtn.center
        transition.circleColor = menuBtn.backgroundColor!
        
        return transition
    }
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dismiss
        transition.startingPoint = menuBtn.center
        transition.circleColor = menuBtn.backgroundColor!
        
        return transition
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! SixOneViewController
        secondVC.transitioningDelegate = self
        secondVC.modalPresentationStyle = .custom
    }
}
