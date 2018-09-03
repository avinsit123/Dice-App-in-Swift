//
//  ViewController.swift
//  The Boy
//
//  Created by Avinash Swaminathan on 03/09/18.
//  Copyright © 2018 Avinash Swaminathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1:Int = 2;
    var randomDiceIndex2:Int = 3;
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    let dice=["images","images-1","images-2","images-3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        calldices()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func RollButtonPressed(_ sender: UIButton) {
       calldices()
        
    }
   
    func calldices(){
        randomDiceIndex1=Int(arc4random_uniform(4))
        randomDiceIndex2=Int(arc4random_uniform(4))
        print(randomDiceIndex1);
        diceImage1.image=UIImage(named:dice[randomDiceIndex2])
        diceImage2.image=UIImage(named:dice[randomDiceIndex1])
    }
    
}

