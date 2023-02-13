//
//  ViewController.swift
//  CardGame
//
//  Created by 4d on 2/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    var score = 0
    var currentCardValue = 0
    var nextCardValue = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         currentCardValue = Int.random(in: 1 ... 13)

        Score.text = "Score: \(score)"
        image.image = UIImage(named:"\(currentCardValue)")
    }

    @IBOutlet var image: UIImageView!
    @IBOutlet var Score: UILabel!
    @IBOutlet var higher: UIButton!
    @IBOutlet var lower: UIButton!
    
    @IBAction func lowerButton(_ sender: Any) {
        nextCardValue = randomNum()
        image.image = UIImage(named:"\(nextCardValue)")
        if nextCardValue < currentCardValue {
            score += 1
            currentCardValue = nextCardValue
            Score.text = "Score: \(score)"
        }
        else {
            Score.text = "Game Over"
            score = 0
        }
    }
    
    @IBAction func higherButton(_ sender: Any) {
        
        nextCardValue = randomNum()
        image.image = UIImage(named:"\(nextCardValue)")
        if nextCardValue > currentCardValue {
            score += 1
            currentCardValue = nextCardValue
            Score.text = "Score: \(score)"
        }
        else {
            Score.text = "Game Over"
            score = 0
            
        }
    }
    
    func randomNum () -> Int{
        return Int.random(in: 1 ... 13)
    }
    
}

