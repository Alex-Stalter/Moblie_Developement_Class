//
//  ViewController.swift
//  Example01_animation
//
//  Created by Alex Stalter on 2/27/20.
//  Copyright © 2020 Alex Stalter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let animationFrames = [UIImage(named: "frame-1")!,UIImage(named: "frame-2")!,UIImage(named: "frame-3")!,UIImage(named: "frame-4")!,UIImage(named: "frame-5")!,UIImage(named: "frame-6")!,UIImage(named: "frame-7")!,UIImage(named: "frame-8")!,UIImage(named: "frame-9")!,UIImage(named: "frame-10")!,UIImage(named: "frame-11")!,UIImage(named: "frame-12")!,UIImage(named: "frame-13")!,UIImage(named: "frame-14")!,UIImage(named: "frame-15")!,UIImage(named: "frame-16")!,UIImage(named: "frame-17")!,UIImage(named: "frame-18")!,UIImage(named: "frame-19")!,UIImage(named: "frame-20")!]
    var animationSpeed: Float = 2
    
    @IBOutlet weak var fpsLabel: UILabel!
    @IBOutlet weak var rabbit01: UIImageView!
    @IBOutlet weak var rabbit02: UIImageView!
    @IBOutlet weak var rabbit03: UIImageView!
    @IBOutlet weak var rabbit4: UIImageView!
    @IBOutlet weak var rabbit5: UIImageView!
    @IBOutlet weak var startStop: UIButton!
    @IBOutlet weak var speedSliderOutlet: UISlider!
    @IBOutlet weak var speedStepperOutlet: UIStepper!
    var imageViewArray:[UIImageView] = []
    
    func changeSpeed(_ newSpeed: Double){
        
        for img in imageViewArray
        {
            
            img.animationDuration = Double(animationFrames.count) / newSpeed
            img.startAnimating()
            
        }
        fpsLabel.text = String(format: "%.2f fps", newSpeed)

        
    }
    
    @IBAction func startStopButton(_ sender: Any) {
        if(rabbit01.isAnimating){
            for img in imageViewArray
            {
                
                img.stopAnimating()
                
            }
            startStop.setTitle("Start", for: UIControl.State())
        }else{
            for img in imageViewArray
            {
                
                img.startAnimating()
                
            }
            startStop.setTitle("Stop", for: UIControl.State())
        }
    }
    @IBAction func speedSlider(_ sender: Any) {
        speedStepperOutlet.value = Double(speedSliderOutlet.value)
        for img in imageViewArray
        {
            
            img.animationDuration = Double(animationFrames.count) / Double(speedSliderOutlet.value)
            img.startAnimating()
            
        }
        
        fpsLabel.text = String(format: "%.2f fps", speedStepperOutlet.value)
    }
    @IBAction func speedStepper(_ sender: Any) {
        speedSliderOutlet.value = Float(speedStepperOutlet.value)
        changeSpeed(Double(speedSliderOutlet!.value))
            }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       imageViewArray = [rabbit01,rabbit02,rabbit03,rabbit4,rabbit5]
        for img in imageViewArray
        {
            
            img.animationImages = animationFrames
            img.animationDuration = 2
            
        }
        
        
    }


}

