//
//  ViewController.swift
//  Magic 8Ball
//
//  Created by Justice Bayle on 2019-02-07.
//  Copyright © 2019 Justice Bayle. All rights reserved.
//

import UIKit

var randomMagic8ball1 : Int = 0

class ViewController: UIViewController {
    let magicArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        updateMagic8Ballimages()
    }

    @IBOutlet weak var magic8Ball: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateMagic8Ballimages()
        
    }
    func updateMagic8Ballimages(){
        
        randomMagic8ball1 = Int(arc4random_uniform(5))
        
        magic8Ball.image = UIImage(named: magicArray[randomMagic8ball1])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateMagic8Ballimages()
    }
}

