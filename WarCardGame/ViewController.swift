//
//  ViewController.swift
//  WarCardGame
//
//  Created by GAURI SHANKAR GUPTA on 11/11/19.
//  Copyright © 2019 GAURI SHANKAR GUPTA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var leftScore = 0
    var rigthScore = 0
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    
    @IBAction func dealTapped(_ sender: Any) {

        let leftNumber = Int.random(in: 2...14)
        
        let rigthNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rigthNumber)")
        
        if leftNumber > rigthNumber{
            //left wins
            leftScore+=1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rigthNumber{
            //rigth wins
            rigthScore+=1
            rightScoreLabel.text = String(rigthScore)
            
            
        }
        else{
            //match drawn
        }
    }
    
}

