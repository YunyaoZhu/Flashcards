//
//  ViewController.swift
//  Flashcards
//
//  Created by Yunyao Zhu on 2/15/20.
//  Copyright © 2020 Yunyao Zhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var card: UIView!
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    
    @IBOutlet weak var btnOptionOne: UIButton!
    @IBOutlet weak var btnOptionTwo: UIButton!
    @IBOutlet weak var btnOptionThree: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        card.layer.cornerRadius = 20.0
        card.clipsToBounds = true
        frontLabel.clipsToBounds = true
        backLabel.clipsToBounds = true
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.2
        
        btnOptionOne.layer.cornerRadius = 10.0
        btnOptionOne.layer.borderWidth = 3.0
        btnOptionOne.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        btnOptionTwo.layer.cornerRadius = 10.0
        btnOptionTwo.layer.borderWidth = 3.0
        btnOptionTwo.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        btnOptionThree.layer.cornerRadius = 10.0
        btnOptionThree.layer.borderWidth = 3.0
        btnOptionThree.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }

    @IBAction func didTapOnFlashcard(_ sender: Any) {
        if(frontLabel.isHidden == false){
            frontLabel.isHidden = true
        }
        else{
            frontLabel.isHidden = false
        }
        
    }
    
    @IBAction func didTapOptionOne(_ sender: Any) {
        btnOptionOne.isHidden = true
    }
    
    
    @IBAction func didTapOptionTwo(_ sender: Any) {
        frontLabel.isHidden = true
    }
    
    
    @IBAction func didTapOptionThree(_ sender: Any) {
        btnOptionThree.isHidden = true
    }
}

