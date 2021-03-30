//
//  ViewController.swift
//  Homework_03
//
//  Created by Alex Stalter on 2/27/20.
//  Copyright © 2020 Alex Stalter. All rights reserved.
//

import UIKit
//Array that holds the  three different cities to choose from
let cityArray: [String] = ["Boston","Seattle","Miami"]
//array that holds the string to reference each picture in reference to Boston and the four choices of info
let bostonArray:[String] = ["Boston","bostonMustSee","bostonFood","bostonLocation"]
//array that holds the string to reference each picture in reference to Seattle and the four choices of info
let seattleArray:[String] = ["Seattle","seattleMustSee","seattleFood","seattleLocation"]
//array that holds the string to reference each picture in reference to Miami and the four choices of info
let miamiArray:[String] = ["Miami","miamiMustSee","miamiFood","miamiLocation"]

class ViewController: UIViewController {
    //The UI element that gives the user a choice of one of three cities
    @IBOutlet weak var citySelectorOutlet: UISegmentedControl!
    //The UI element that gives the user four choices of inforation to display
    @IBOutlet weak var requestedInformationOutlet: UISegmentedControl!
    //citylabel is the UILabel where the name of the city is printed
    @IBOutlet weak var cityLabel: UILabel!
    //ImageView is where the user is shown what their selection is
    @IBOutlet weak var imageView: UIImageView!
    //when one of the three cities is selcted this functon will be called and chanegs the image based on user input and the city label
    @IBAction func citySelectorAction(_ sender: Any) {
        //This changes the city lable
        cityLabel.text = cityArray[citySelectorOutlet.selectedSegmentIndex]
        //This changes the image based upon user slection
        imageView.image = UIImage(named: cityArray[citySelectorOutlet.selectedSegmentIndex])
        //When the user slects a new choice they are defaulted to a picture of the city
        requestedInformationOutlet.selectedSegmentIndex = 0
    }
    @IBAction func informationAction(_ sender: Any) {
        //Based upon the users slection of the city of thhe three folowing arrays are chose
        if(cityArray[citySelectorOutlet.selectedSegmentIndex]=="Boston"){
            //Accesses the array of Boston information
            imageView.image = UIImage(named: bostonArray[requestedInformationOutlet.selectedSegmentIndex])
        }else if(cityArray[citySelectorOutlet.selectedSegmentIndex]=="Seattle"){
            //Acceses the array of Seattle infromation
            imageView.image = UIImage(named: seattleArray[requestedInformationOutlet.selectedSegmentIndex])
        }else if(cityArray[citySelectorOutlet.selectedSegmentIndex]=="Miami"){
            //Accesses the array of Miami information
            imageView.image = UIImage(named: miamiArray[requestedInformationOutlet.selectedSegmentIndex])
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Sets the defualt imge and label to be shown when the app is loaded
        cityLabel.text = "Boston"
        imageView.image = UIImage(named:"Boston")
        // Do any additional setup after loading the view.
    }


}

