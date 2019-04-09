//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by IOS on 22/03/19.
//  Copyright © 2019 IOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballImage = ["ball1","ball2", "ball3", "ball4", "ball5"]
    var randomNumber=0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateImage()
    }
    
   
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func askButtonPressed(_ sender: Any) {
        updateImage()
    }
    
    // for device shake
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateImage()
    }
    
    func updateImage(){
        randomNumber = Int.random(in: 0...4)
        imageView.image = UIImage(named: ballImage[randomNumber])
    }
    
}

