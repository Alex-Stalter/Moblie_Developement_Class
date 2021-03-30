//
//  EditorViewcontroller.swift
//  E01_MultiViews
//
//  Created by Alex Stalter on 3/5/20.
//  Copyright © 2020 Alex Stalter. All rights reserved.
//

import UIKit

class EditorViewcontroller: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var inputEmail: UITextField!
    @IBAction func savebutton(_ sender: Any) {
        (presentingViewController as! ViewController).email.text = inputEmail.text
        self.dismiss(animated: true, completion: nil)

    }
    override func viewWillAppear(_ animated: Bool) {
        inputEmail.text = (presentingViewController as! ViewController).email.text
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.inputEmail.delegate = self
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
