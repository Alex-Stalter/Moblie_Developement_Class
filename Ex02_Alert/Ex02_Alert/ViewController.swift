//
//  ViewController.swift
//  Ex02_Alert
//
//  Created by Alex Stalter on 3/26/20.
//  Copyright © 2020 Alex Stalter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var outputLabel: UILabel!
    @IBAction func alertmeButtonClicked(_ sender: Any) {
        //create an alert controller
        let alertController = UIAlertController(title: "Alert Me Button Selected", message: "Attention PLease", preferredStyle: UIAlertController.Style.alert)
        //set up a button
        let defaultAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        //add button to alert controller
        alertController.addAction(defaultAction)
        //display the alert controller
        present(alertController,animated: true, completion: nil)
        
        
    }
    
    @IBAction func AlertWithButtonsClicked(_ sender: Any) {
         let alertController = UIAlertController(title: "Alert With Buttons", message: "There are multiple options", preferredStyle: UIAlertController.Style.alert)
        
        let nowAction = UIAlertAction(title: "Do something now", style: UIAlertAction.Style.default, handler: nil)
        let laterAction = UIAlertAction(title: "Do something later", style: UIAlertAction.Style.default, handler: nil)
        let neverAction = UIAlertAction(title: "Do something never", style: UIAlertAction.Style.default, handler: nil)
        
        
    }
    @IBAction func alertWithInputClicked(_ sender: Any) {
    }
    @IBAction func alertWithActionSheet(_ sender: Any) {
    }
    @IBAction func playSound(_ sender: Any) {
    }
    @IBAction func playAlertSound(_ sender: Any) {
    }
    @IBAction func vibrateDevicebutton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

