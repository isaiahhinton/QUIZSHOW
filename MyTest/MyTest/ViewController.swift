//
//  ViewController.swift
//  MyTest
//
//  Created by Hinton, Isaiah on 2/24/20.
//  Copyright © 2020 Hinton, Isaiah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //variables
    
    var guy:Int = 0
    var simpsons:Int = 0
    var morty:Int = 0
    var park:Int = 0
    var total:Int = 0
    var bonus:Int = 0
    
    
    
    //outlets
    
    @IBOutlet weak var myTotal: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    
    

    //functions
    
    
    @IBAction func submit(_ sender: Any) {
        total = guy + simpsons + morty + park + bonus
        if(total <= 2) {
            myTotal.text = "You do alright..."
            myImage.image = UIImage(named: "stew")
        }
        else if(total > 2 && total <= 4){
            myTotal.text = "You know your stuff!"
            myImage.image = UIImage(named: "rick")
        }
        else {
            myTotal.text = "You are the greatest to ever live!"
            myImage.image = UIImage(named: "celeb")
        }
        
        
    }
    
    
    @IBAction func mySlider(_ sender: UISlider) {
        bonus = Int(sender.value)
    }
    
    
    
    
    
    
    
    
    @IBAction func selectGuy(_ sender: UISwitch) {
        if sender.isOn {
             guy = 1
         }
        else {
             guy = 0
         }
        
    }
    
    @IBAction func selectSimpsons(_ sender: UISwitch) {
        if sender.isOn {
             simpsons = 1
         }
        else {
             simpsons = 0
         }
    }
    
    
    @IBAction func selectMorty(_ sender: UISwitch) {
        if sender.isOn {
             morty = 1
         }
        else {
             morty = 0
         }
    }
    
    @IBAction func selectPark(_ sender: UISwitch) {
        if sender.isOn {
             park = 1
         }
        else {
             park = 0
         }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

