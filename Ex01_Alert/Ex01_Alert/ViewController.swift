//
//  ViewController.swift
//  Ex01_Alert
//
//  Created by Alex Stalter on 3/26/20.
//  Copyright © 2020 Alex Stalter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dollarButton: UIButton!
    
    @IBAction func dollarButtonTouchDown(_ sender: Any) {
        dollarButton.setBackgroundImage(nil, for: UIControl.State.normal)
        let rnd = arc4random_uniform(10) //random int 0-10, 10 is excluded
        dollarButton.setTitle(String(rnd), for: UIControl.State.normal)
    }
    
    @IBAction func dollarButtonTouchUp(_ sender: Any) {
        dollarButton.setBackgroundImage(UIImage.init(named: "dollar"), for: UIControl.State.normal)
        dollarButton.setTitle(nil, for: UIControl.State.normal)
    }
    
    @IBAction func exitButtonClicked(_ sender: Any) {
        exit(0)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

