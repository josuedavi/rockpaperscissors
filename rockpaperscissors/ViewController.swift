//
//  ViewController.swift
//  rockpaperscissors
//
//  Created by Josue David  on 12/9/20.
//

import UIKit

class ViewController: UIViewController {
   
    //variables, outlets, and actions
    @IBOutlet weak var pl1Name: UILabel!
    @IBOutlet weak var p1Score: UILabel!
    @IBOutlet weak var compScore: UILabel!
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var Scissors: UIButton!
    let randomVar = Int.random(in: 1..<4)
    var object : String = ""
    var objectSelected: String = ""
    var pl1Score = ""
    var compuScore = ""
    
    //if rock is pressed
    @IBAction func chooseRock(_ sender: Any) {
        
        print("You selected Rock.")
        
      objectSelected = "Rock"
        
        //randomly select computer var
        if randomVar == 1 {
            
            object = "rock"
            
        } else if randomVar == 2 {
            
            object = "paper"
            
        } else {
            
            object = "scissors"
            
        }
        
        print("The Computer Selected: \(object)")
        
    }
    
    //if paper is chosen
    @IBAction func choosePaper(_ sender: Any) {
        
        print("You selected Paper.")
        objectSelected = "Paper"
        
        //randomly select computer var
        if randomVar == 1 {
            
            object = "rock"
            
        } else if randomVar == 2 {
            
            object = "paper"
            
        } else {
            
            object = "scissors"
            
        }
        
        print("The Computer Selected: \(object)")
    }
    
    //if scissors is chosen
    @IBAction func chooseScissors(_ sender: Any) {
        
        print("You selected Scissors.")
        objectSelected = "scissors"
   
        //randomly select computer var
        if randomVar == 1 {
            
            object = "rock"
            
        } else if randomVar == 2 {
            
            object = "paper"
            
        } else {
            
            object = "scissors"
            
        }
        
        print("The Computer Selected: \(object)")
        
    }
    
    //pass data to resultsviewcontroller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
            if var destination = segue.destination as? ResultsViewController {
                
                destination.results = objectSelected
                destination.compResults = object
         
            }
    }
 
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //setup score of player and computer
        p1Score.text = String(score.p1Score)
        compScore.text = String(score.cScore)
        pl1Name.text = score.name + ":"
    }
}
