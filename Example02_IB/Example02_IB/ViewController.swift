//
//  ViewController.swift
//  Example02_IB
//
//  Created by Alex Stalter on 2/25/20.
//  Copyright © 2020 Alex Stalter. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    let cityArray = ["Boston", "Beijing", "New York", "London"]
    var currentImg = "Boston"
    @IBOutlet weak var nameIn: UITextField!
    @IBOutlet weak var yearIn: UITextField!
    @IBOutlet weak var majorIn: UITextField!
    @IBOutlet weak var output: UITextView!
    @IBOutlet weak var outputImage: UIImageView!
    @IBOutlet weak var cityChoiceOutlet: UISegmentedControl!
    @IBAction func cityChoice(_ sender: Any) {
        
        output.text = "Welcome back \(nameIn.text!)! \(nameIn.text!) is from \(cityArray[cityChoiceOutlet.selectedSegmentIndex]) and graduated in \(yearIn.text!) with a \(majorIn.text!) major."
        currentImg = cityArray[cityChoiceOutlet.selectedSegmentIndex]
        outputImage.image = UIImage(named: currentImg)
        
    }
    @IBAction func hideKeyboard(_ sender: Any) {
        majorIn.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameIn.delegate = self
        outputImage.image = UIImage(named: currentImg)
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


}

