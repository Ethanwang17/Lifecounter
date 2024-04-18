//
//  ViewController.swift
//  Lifecounter
//
//  Created by Ethan Wang on 4/16/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Player_2: UILabel!
    @IBOutlet weak var Player_2_Lives: UILabel!
    @IBOutlet weak var Player_2_Minus5: UIButton!
    @IBOutlet weak var Player_2_Plus5: UIButton!
    @IBOutlet weak var Player_2_Plus1: UIButton!
    @IBOutlet weak var Player_2_Minus1: UIButton!
    @IBOutlet weak var Player_2_Lose: UILabel!
    
    @IBOutlet weak var Player_1: UILabel!
    @IBOutlet weak var Player_1_Lives: UILabel!
    @IBOutlet weak var Player_1_Minus5: UIButton!
    @IBOutlet weak var Player_1_Plus5: UIButton!
    @IBOutlet weak var Player_1_Plus1: UIButton!
    @IBOutlet weak var Player_1_Minus1: UIButton!
    @IBOutlet weak var Player_1_Lose: UILabel!
    
    @IBOutlet weak var Vertical_Stack_View: UIStackView!
    
    var player1LifeCount = 20
    var player2LifeCount = 20


    
    override func viewDidLoad() {
        super.viewDidLoad()
        Player_1_Lose.isHidden = true
        Player_2_Lose.isHidden = true


        // Flip all of the Player 2 text upside down
        Player_2.transform = CGAffineTransform(rotationAngle: .pi)
        Player_2_Lives.transform = CGAffineTransform(rotationAngle: .pi)
        Player_2_Minus5.transform = CGAffineTransform(rotationAngle: .pi)
        Player_2_Plus5.transform = CGAffineTransform(rotationAngle: .pi)


        Player_2_Plus5.layer.borderWidth = 2
        Player_2_Plus5.layer.cornerRadius = 15
        Player_2_Minus5.layer.borderWidth = 2
        Player_2_Minus5.layer.cornerRadius = 15
        
        
        Player_1_Minus5.layer.borderWidth = 2
        Player_1_Minus5.layer.cornerRadius = 15
        Player_1_Plus5.layer.borderWidth = 2
        Player_1_Plus5.layer.cornerRadius = 15
        
    }
    
    @IBAction func player1Plus5Pressed(_ sender: UIButton) {
        player1LifeCount += 5
        if player1LifeCount > 999 {
            player1LifeCount = 999
        }
        Player_1_Lives.text = "\(player1LifeCount)"
    }
    @IBAction func player1Minus5Pressed(_ sender: UIButton) {
        player1LifeCount -= 5
        if player1LifeCount < 0 {
            player1LifeCount = 0
            Player_1_Lose.isHidden = false
//            Player_1.font = UIFont.boldSystemFont(ofSize: 5)
//            Player_2.font = UIFont.boldSystemFont(ofSize: 5)
        }
        Player_1_Lives.text = "\(player1LifeCount)"
    }
    @IBAction func player1Minus1Pressed(_ sender: UIButton) {
        player1LifeCount -= 1
        if player1LifeCount < 0 {
            player1LifeCount = 0
            Player_1_Lose.isHidden = false
//            Player_1.font = UIFont.boldSystemFont(ofSize: 5)
//            Player_2.font = UIFont.boldSystemFont(ofSize: 5)
        }
        Player_1_Lives.text = "\(player1LifeCount)"
    }
    @IBAction func player1Plus1Pressed(_ sender: UIButton) {
        player1LifeCount += 1
        if player1LifeCount > 999 {
            player1LifeCount = 999
        }
        Player_1_Lives.text = "\(player1LifeCount)"
    }
    
    
    
    
    @IBAction func player2Plus5Pressed(_ sender: UIButton) {
        player2LifeCount += 5
        if player2LifeCount > 999 {
            player2LifeCount = 999
        }
        Player_2_Lives.text = "\(player2LifeCount)"
    }
    @IBAction func player2Minus5Pressed(_ sender: UIButton) {
        player2LifeCount -= 5
        if player2LifeCount < 0 {
            player2LifeCount = 0
            Player_2_Lose.isHidden = false
//            Player_1.font = UIFont.boldSystemFont(ofSize: 5)
//            Player_2.font = UIFont.boldSystemFont(ofSize: 5)
        }
        Player_2_Lives.text = "\(player2LifeCount)"
    }
    @IBAction func player2Minus1Pressed(_ sender: UIButton) {
        player2LifeCount -= 1
        if player2LifeCount < 0 {
            player2LifeCount = 0
            Player_2_Lose.isHidden = false
//            Player_1.font = UIFont.boldSystemFont(ofSize: 5)
//            Player_2.font = UIFont.boldSystemFont(ofSize: 5)
        }
        Player_2_Lives.text = "\(player2LifeCount)"
    }
    @IBAction func player2Plus1Pressed(_ sender: UIButton) {
        player2LifeCount += 1
        if player2LifeCount > 999 {
            player2LifeCount = 999
        }
        Player_2_Lives.text = "\(player2LifeCount)"
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        if UIDevice.current.orientation.isLandscape {
            // Set font size for landscape mode
            Player_1_Lives.font = UIFont.boldSystemFont(ofSize: 70)
            Player_2_Lives.font = UIFont.boldSystemFont(ofSize: 70)
            Player_1.font = UIFont.boldSystemFont(ofSize: 15)
            Player_2.font = UIFont.boldSystemFont(ofSize: 15)

            Vertical_Stack_View.spacing = 5

        } else {
            // Set font size for portrait mode
            Player_1_Lives.font = UIFont.boldSystemFont(ofSize: 140)
            Player_2_Lives.font = UIFont.boldSystemFont(ofSize: 140)
            Player_1.font = UIFont.boldSystemFont(ofSize: 30)
            Player_2.font = UIFont.boldSystemFont(ofSize: 30)
            Vertical_Stack_View.spacing = 50

        }
    }


}

