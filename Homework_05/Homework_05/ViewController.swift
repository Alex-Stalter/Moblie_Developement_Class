//
//  ViewController.swift
//  Homework_05
//
//  Created by Alex Stalter on 4/14/20.
//  Copyright © 2020 Alex Stalter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Sets up the specfifc values for the prizes
    var prizes = [0,100,200,300,400,500]
    //accumulates the amount of prize money the user has accumulated
    var totalGained = 0
    //holds the number of buttons that have been clicked, will not exceed 2
    var buttonsClicked = 0
    //the clciked vars hold wheather each button has been clicked so that one button can be clciked only once per game
    var clicked01 = false
    var clicked02 = false
    var clicked03 = false
    var clicked04 = false
    var clicked05 = false
    var clicked06 = false
    //variable that holds the outlet for the six buttons that are the main componenet of the game
    @IBOutlet weak var prize_01: UIButton!
    @IBOutlet weak var prize_02: UIButton!
    @IBOutlet weak var prize_03: UIButton!
    @IBOutlet weak var prize_04: UIButton!
    @IBOutlet weak var prize_05: UIButton!
    @IBOutlet weak var prize_06: UIButton!
    //holds the string which displays the amount of money that the user has attained
    @IBOutlet weak var prize_Label: UILabel!
    //The action for the first button all of the button clicks have identical functions just different values
    @IBAction func prize_01_action(_ sender: Any) {
        //checks if the button has been clciked already this game
        if(!clicked01){
            //sets the respective clicked value to true
            clicked01 = true
            //removes the background image so that string can be shown
            prize_01.setBackgroundImage(nil, for: UIControl.State.normal)
            //sets the title of the button to a specific random value
            prize_01.setTitle(String(prizes[0]), for: UIControl.State.normal)
            //adds the amount won to the toal
            totalGained += prizes[0]
            //updates the prize label
            prize_Label.text = "You've got \(totalGained) dollars!"
            //increments the buttonsClicked value
            buttonsClicked += 1
        }
        //calls the endgame function to check if two buttons have been clciekd and display the alert
        endGame()
    }
    //all of the other button actions are the same as teh first one just with differetn values
    @IBAction func prize_02_action(_ sender: Any) {
        if(!clicked02){
            clicked02 = true
            prize_02.setBackgroundImage(nil, for: UIControl.State.normal)
            prize_02.setTitle(String(prizes[1]), for: UIControl.State.normal)
            totalGained += prizes[1]
            prize_Label.text = "You've got \(totalGained) dollars!"
            buttonsClicked += 1
        }
        endGame()
    }
    @IBAction func prize_03_action(_ sender: Any) {
        if(!clicked03){
            clicked03 = true
            prize_03.setBackgroundImage(nil, for: UIControl.State.normal)
            prize_03.setTitle(String(prizes[2]), for: UIControl.State.normal)
            totalGained += prizes[2]
            prize_Label.text = "You've got \(totalGained) dollars!"
            buttonsClicked += 1
        }
        endGame()
    }
    @IBAction func prize_04_action(_ sender: Any) {
        if(!clicked04){
            clicked04 = true
            prize_04.setBackgroundImage(nil, for: UIControl.State.normal)
            prize_04.setTitle(String(prizes[3]), for: UIControl.State.normal)
            totalGained += prizes[3]
            prize_Label.text = "You've got \(totalGained) dollars!"
            buttonsClicked += 1
        }
        endGame()
    }
    @IBAction func prize_05_action(_ sender: Any) {
        if(!clicked05){
            clicked05 = true
            prize_05.setBackgroundImage(nil, for: UIControl.State.normal)
            prize_05.setTitle(String(prizes[4]), for: UIControl.State.normal)
            totalGained += prizes[4]
            prize_Label.text = "You've got \(totalGained) dollars!"
            buttonsClicked += 1
        }
        endGame()
    }
    @IBAction func prize_06_action(_ sender: Any) {
        if(!clicked06){
            clicked06 = true
            prize_06.setBackgroundImage(nil, for: UIControl.State.normal)
            prize_06.setTitle(String(prizes[5]), for: UIControl.State.normal)
            totalGained += prizes[5]
            prize_Label.text = "You've got \(totalGained) dollars!"
            buttonsClicked += 1
        }
        
        endGame()
        
    }
    //checks if the help button is clicked and show the alert
    @IBAction func help_Button(_ sender: Any) {
        //sets up the alert controller with how to play the game
        let alertController = UIAlertController(title: "How To Play", message: "Click two buttons to find your reward. ", preferredStyle: UIAlertController.Style.alert)
        //sets up a OK button on the alert that will allow the user to click out of the window
        let defaultAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        //adds the deafualt action to the alertController
        alertController.addAction(defaultAction)
        //presents the alertController
        present(alertController,animated: true, completion: nil)
    }
    //resets the game back to the beginning
    func resetGame(){
        //a list of buttons to be looped through and updated
        let buttonList:[UIButton] = [prize_01, prize_02, prize_03, prize_04, prize_05, prize_06]
        //resets the buttonsClicked amount
        buttonsClicked = 0
        //resets the total gained amount
        totalGained = 0
        //resets the prize label
        prize_Label.text = "You've got \(totalGained) dollars!"
        //lsits through the buttons to reset them to the dollar picture and remove the prize amount
        for prize in buttonList{
            
            prize.setTitle(" ", for: UIControl.State.normal)
            prize.setBackgroundImage(UIImage(named: "dollar"), for: UIControl.State.normal)
            
        }
        //resets all of the clicked booleans
        clicked01 = false
        clicked02 = false
        clicked03 = false
        clicked04 = false
        clicked05 = false
        clicked06 = false
        //reshuffles the prize list so that the button have different value each time after reset
        prizes.shuffle()
        
        
    }
    
    func endGame() {
        //first checks if two buttons have been clciked
        if(buttonsClicked==2){
            //sets up a alert controller letting the user know how much it won
            let alertController = UIAlertController(title: "Congratulations!", message: "You've won \(totalGained) dollars!", preferredStyle: UIAlertController.Style.alert)
            //sets up a exit button that will exit the application
            let exitAction = UIAlertAction(title: "Exit", style: UIAlertAction.Style.default, handler: {(alert: UIAlertAction!) in exit(0) })
            //sets up a play again button whcih calles the reset game function
            let replayButton = UIAlertAction(title: "Play Again", style: UIAlertAction.Style.default, handler: {(alert: UIAlertAction!) in self.resetGame()})
            //adds the exit button to the alert
            alertController.addAction(exitAction)
            //adds the play again button to the alert
            alertController.addAction(replayButton)
            //presents the alert to the user
            present(alertController,animated: true,completion: nil)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //shuffles the prize array so that it is random each time and has no repeats
        prizes.shuffle()
        // Do any additional setup after loading the view.
    }


}

