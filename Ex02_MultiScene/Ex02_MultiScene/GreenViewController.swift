//
//  GreenViewController.swift
//  Ex02_MultiScene
//
//  Created by Alex Stalter on 3/24/20.
//  Copyright © 2020 Alex Stalter. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {
    @IBAction func goToRed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
