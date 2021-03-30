//
//  ViewController.swift
//  Example01_IB
//
//  Created by Alex Stalter on 2/20/20.
//  Copyright © 2020 Alex Stalter. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameIn: UITextField!
    @IBOutlet weak var yearIn: UITextField!
    @IBOutlet weak var majorIn: UITextField!
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBAction func submitButton(_ sender: Any) {
        
        infoLabel.text = "Welcome Back \(nameIn.text!) graduated in \(yearIn.text!) with the major \(majorIn.text!)."
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameIn.delegate = self
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

