//
//  MenuViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 5/27/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var menuCollectionView: UICollectionView!
    
    var titleMenu = ["Gif Animation", "Moving Point", "Button Animation", "Spring Button", "Table View Animation", "View Controller Transition", "Parallax", "Tool Bar", "Spring and Slide in Action", "Pop Up", "Fade In with Slide Car", "Gradients View", "Text Field curve in"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuCollectionView.delegate = self
        menuCollectionView.dataSource = self
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titleMenu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MenuCollectionViewCell
        
        cell.menuLbl.text = titleMenu[indexPath.row]
        
        return cell
    }

 
}
