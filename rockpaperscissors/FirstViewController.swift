//
//  FirstViewController.swift
//  rockpaperscissors
//
//  Created by Josue David  on 12/15/20.
//

import UIKit

class FirstViewController: UIViewController {

   
    @IBOutlet weak var username: UITextField!
    
    //if user enters name
    @IBAction func nameScore(_ sender: Any) {
        
        if username.text == "" {
            
        score.name = "Player 1"

        } else {
            score.name = username.text!
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
      
      
    }
}
