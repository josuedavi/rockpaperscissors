//
//  ResultsViewController.swift
//  rockpaperscissors
//
//  Created by Josue David  on 12/14/20.
//

import UIKit

class ResultsViewController: UIViewController {

    //variables, outlets, and actions
    @IBOutlet weak var winner: UILabel!
    @IBOutlet weak var restartGame: UIButton!
    @IBOutlet weak var pl1Name: UILabel!
    @IBOutlet weak var showRes: UIButton!
    @IBOutlet weak var compuScore: UILabel!
    @IBOutlet weak var playerOneScore: UILabel!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var showResults: UILabel!
    @IBOutlet weak var winnerResults: UILabel!
    @IBOutlet weak var p1Img: UIImageView!
    @IBOutlet weak var comp: UIImageView!
    @IBOutlet weak var computer: UILabel!
    var results: String = ""
    var compResults: String = ""
    var cons = 0
    var cScore : String = ""
    var pScore : String = ""
    let arr = [3]

    //if computer score or player score equals 3 then set bool to true
    func ifTrue()-> Bool {
        var fal = false
        
         if score.cScore == arr[0] || score.p1Score == arr[0] {
            fal = true
            
         }
        return fal
    }
    
    //if reset button clicked reset scores
    @IBAction func buttonClicked(_ sender: Any) {
        
        //if computer score is euqal to 3 and btn is not hidden
        if btn.isHidden == false && score.p1Score == 3 {
            
            score.cScore = cons
            score.p1Score = cons
            
        }
        
        //if computer score is euqal to 3 and btn is not hidden
        if btn.isHidden == false && score.cScore == 3 {
            
            score.cScore = cons
            score.p1Score = cons
            
        }
      
    }

    //when view loads
    override func viewDidLoad() {
        
        super.viewDidLoad()
        showRes.isHidden = true                         //hide reset button
        showResults.text = "You selected: \(results)"   //show what player selected
        compuScore.text = String(score.cScore)          //show computer score
        playerOneScore.text = String(score.p1Score)     //show player score
        
        //if reset button is nothidden
        if showRes.isHidden == false {
           
            //if player score is equal to 3
            if score.p1Score == 3 {
                
                p1Img.image = UIImage(named: "pl1")
                
            }
            
            //if computer score is equal to 3
            if score.cScore == 3 {
                
                p1Img.image = UIImage(named: "import")
                
            }
            
        } else {//if reset button is hidden
            
            //if player 1 chooses rock
            if results.lowercased() == "rock" {
                
                p1Img.image = UIImage(named: "rock")
                
            } else if results.lowercased() == "paper" { //if player 1 chooses paper
                
                p1Img.image = UIImage(named: "paper")
                
            } else {  //if player 1 chooses scissors
                
                p1Img.image = UIImage(named: "scissors")
                
            }
            
            //if computer chooses rock
            if compResults.lowercased() == "rock" {
                
                comp.image = UIImage(named: "rock")
                
            } else if compResults.lowercased() == "paper" { //if computer chooses paper

                
                comp.image = UIImage(named: "paper")
                
            } else {    //if computer scissors
                
               comp.image = UIImage(named: "scissors")
                
            }
            
            computer.text = "The computer selected: \(compResults)"
                    
            //if player chooses rock...
            if results.lowercased() == "rock" {
                
                //...and computer chooses rock
                if compResults.lowercased() == "rock" {
                    
                    winnerResults.text = "TIE! No Winner!"
                    compuScore.text = String(score.cScore)
                    playerOneScore.text = String(score.p1Score)
                    
                } else if compResults.lowercased() == "paper" {//...and computer chooses paper
                    
                    winnerResults.text = "You Lost!"
                    score.cScore += 1
                    compuScore.text = String(score.cScore)
                   
                } else if compResults.lowercased() == "scissors" {//...and computer scissors
                    
                    winnerResults.text = "You Won!"
                    score.p1Score += 1
                    playerOneScore.text = String(score.p1Score)
                    
                }
            }
            
            //if player chooses paper...
            if results.lowercased() == "paper" {
                
                if compResults.lowercased() == "rock" {//...and computer chooses rock
                    
                    winnerResults.text = "You Won!"
                    score.p1Score += 1
                    playerOneScore.text = String(score.p1Score)
                    
                } else if compResults.lowercased() == "paper" {//...and computer chooses paper
                    
                    winnerResults.text = "TIE! No Winner!"
                    compuScore.text = String(score.cScore)
                    playerOneScore.text = String(score.p1Score)
                    
                } else if compResults.lowercased() == "scissors" {//...and computer chooses scissors
                    
                    winnerResults.text = "You Lost!"
                    score.cScore += 1
                    compuScore.text = String(score.cScore)
                    
                }
            }
            
            //if player chooses paper..
            if results.lowercased() == "scissors" {
                
                //...and computer chooses rock
                if compResults.lowercased() == "rock" {
                    
                    winnerResults.text = "You Lost!"
                    score.cScore += 1
                    compuScore.text = String(score.cScore)
                    
                } else if compResults.lowercased() == "paper" {//...and computer chooses paper
                    
                    winnerResults.text = "You Won!"
                    score.p1Score += 1
                    playerOneScore.text = String(score.p1Score)
                    
                } else if compResults.lowercased() == "scissors" {//...and computer chooses scissors
                    
                    winnerResults.text = "TIE! No Winner!"
                    compuScore.text = String(score.cScore)
                    playerOneScore.text = String(score.p1Score)
                    
                }
                
            }
         
                    //if player reaches 3 or computer reaches 3
                    if score.cScore == 3 || score.p1Score == 3 {
                        
                        btn.isHidden = true      //hide play again button
                        showRes.isHidden = false //show results button
                        
                        //if player wins show...
                           if score.p1Score == 3 {
                               
                               p1Img.image = UIImage(named: "pl1")
                               winner.text = "The Winner is \(pl1Name.text ?? "player1")"
                               image2.isHidden = true
                               computer.text = ""
                               showRes.isHidden = true
                               btn.isHidden = false
                               btn.setTitle("Restart", for: .normal)
                               
                           }
                           
                            //if computer wins shoowwww...
                           if score.cScore == 3 {
                               
                               p1Img.image = UIImage(named: "import")
                               winner.text = "The Winner is Computer!"
                               image2.isHidden = true
                               computer.text = ""
                               showRes.isHidden = true
                               btn.isHidden = false
                               btn.setTitle("Restart", for: .normal)
                            
                           }
                    }
            }
        }
}
