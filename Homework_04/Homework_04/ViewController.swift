//
//  ViewController.swift
//  Homework_04
//
//  Created by Alex Stalter on 3/26/20.
//  Copyright © 2020 Alex Stalter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //visableFrames containes the reference to all of the visible image frames in order to animate them
    let visableFrames = [UIImage(named: "visible01")!,UIImage(named: "visible02")!,UIImage(named: "visible03")!,UIImage(named: "visible04")!,UIImage(named: "visible05")!,UIImage(named: "visible06")!,UIImage(named: "visible07")!,UIImage(named: "visible08")!,UIImage(named: "visible09")!,UIImage(named: "visible10")!,UIImage(named: "visible11")!,UIImage(named: "visible12")!,UIImage(named: "visible13")!,UIImage(named: "visible14")!]
    //infaredFrames is an array that containes the reference to all of the images of the infrared frames in order to animate them
    let infaredFrames = [UIImage(named: "infrared01")!,UIImage(named: "infrared02")!,UIImage(named: "infrared03")!,UIImage(named: "infrared04")!,UIImage(named: "infrared05")!,UIImage(named: "infrared06")!,UIImage(named: "infrared07")!,UIImage(named: "infrared08")!,UIImage(named: "infrared09")!,UIImage(named: "infrared10")!,UIImage(named: "infrared11")!,UIImage(named: "infrared12")!,UIImage(named: "infrared13")!,UIImage(named: "infrared14")!]
    //holds the refernce to the imageOutlet in order to set the animation frames and animation speed
    @IBOutlet weak var imageOutlet: UIImageView!
    //Used to get the speed that is set by the stepper and display it on screen
    @IBOutlet weak var speedOutlet: UILabel!
    //Allows the program to change the titel of the play/stop button
    @IBOutlet weak var playButtonOutlet: UIButton!
    //Allows the program to access the value on the segmented control wether it is infrared or visible
    @IBOutlet weak var selectorOutlet: UISegmentedControl!
    //Allows the program to ge the value of the stepper to change the speed of the animation
    @IBOutlet weak var stepperOutlet: UIStepper!
    //viewSelector changes which image array is used for the animation
    @IBAction func viewSelector(_ sender: Any) {
        //if the selector is on 0 which is visible then it changes the animation images and restarts
        //if the selector is on 1 which is infrared then it changes the animation images and restarts
        if(selectorOutlet.selectedSegmentIndex == 0){
            imageOutlet.animationImages = visableFrames
            imageOutlet.startAnimating()
            playButtonOutlet.setTitle("Stop", for: UIControl.State())
        }else if (selectorOutlet.selectedSegmentIndex == 1){
            imageOutlet.animationImages = infaredFrames
            imageOutlet.startAnimating()
            playButtonOutlet.setTitle("Stop", for: UIControl.State())
        }
        
    }
    //Changes the speed of the animation based on the value of the stepper stepper is set to -5 to -1
    @IBAction func speedStepper(_ sender: Any) {
        //the value of the stepper is multiplied by -1 in order to have the animation decreases
        imageOutlet.animationDuration = (stepperOutlet.value * -1)
        //restarts animation
        imageOutlet.startAnimating()
        //sets the title of the button to Stop
        playButtonOutlet.setTitle("Stop", for: UIControl.State())
        //changes the seconds in the speedOutlet
        speedOutlet.text = "14 frames  " + String(stepperOutlet.value * -1) + " seconds"
    }
    //Starts and stops the animation
    @IBAction func playbutton(_ sender: Any) {
        if(imageOutlet.isAnimating){
            imageOutlet.stopAnimating()
            playButtonOutlet.setTitle("Play", for: UIControl.State())
        }else{
            imageOutlet.startAnimating()
            playButtonOutlet.setTitle("Stop", for: UIControl.State())
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //The next to lines set up the default values for the naimation
        imageOutlet.animationImages = visableFrames
        imageOutlet.animationDuration = 1
        // Do any additional setup after loading the view.
    }


}

