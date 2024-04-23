//
//  ViewController.swift
//  Lifecounter
//
//  Created by Ethan Wang on 4/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Player_1: UILabel!
    @IBOutlet weak var Player_1_Lives: UILabel!
    @IBOutlet weak var Player_1_Lose: UILabel!
    @IBOutlet weak var Player_1_Stack: UIStackView!
    
    @IBOutlet weak var Player_2: UILabel!
    @IBOutlet weak var Player_2_Lives: UILabel!
    @IBOutlet weak var Player_2_Lose: UILabel!
    @IBOutlet weak var Player_2_Stack: UIStackView!
    
    @IBOutlet weak var Player_3: UILabel!
    @IBOutlet weak var Player_3_Lives: UILabel!
    @IBOutlet weak var Player_3_Lose: UILabel!
    @IBOutlet weak var Player_3_Stack: UIStackView!
    
    @IBOutlet weak var Player_4: UILabel!
    @IBOutlet weak var Player_4_Lives: UILabel!
    @IBOutlet weak var Player_4_Lose: UILabel!
    @IBOutlet weak var Player_4_Stack: UIStackView!
    
    @IBOutlet weak var Player_5: UILabel!
    @IBOutlet weak var Player_5_Lives: UILabel!
    @IBOutlet weak var Player_5_Lose: UILabel!
    @IBOutlet weak var Player_5_Stack: UIStackView!
    
    @IBOutlet weak var Player_6: UILabel!
    @IBOutlet weak var Player_6_Lives: UILabel!
    @IBOutlet weak var Player_6_Lose: UILabel!
    @IBOutlet weak var Player_6_Stack: UIStackView!
    
    
    @IBOutlet weak var Player_7: UILabel!
    @IBOutlet weak var Player_7_Lives: UILabel!
    @IBOutlet weak var Player_7_Lose: UILabel!
    @IBOutlet weak var Player_7_Stack: UIStackView!
    
    
    @IBOutlet weak var Player_8: UILabel!
    @IBOutlet weak var Player_8_Lives: UILabel!
    @IBOutlet weak var Player_8_Lose: UILabel!
    @IBOutlet weak var Player_8_Stack: UIStackView!
    
    
    
    @IBOutlet weak var History_Button: UIButton!
    
    
    @IBOutlet weak var Vertical_Stack_View: UIStackView!
    @IBOutlet weak var Nav_Stack_View: UIStackView!
    
    
    
    var player1LifeCount = 20
    var player2LifeCount = 20
    var player3LifeCount = 20
    var player4LifeCount = 20
    var player5LifeCount = 20
    var player6LifeCount = 20
    var player7LifeCount = 20
    var player8LifeCount = 20
    var playerCount = 4
    var editNumber: Int = 0
    
    var actions: [String] = []
    
    
    
    @IBAction func historyButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let historyVC = storyboard.instantiateViewController(withIdentifier: "HistoryViewController") as? HistoryViewController {
            historyVC.actions = actions
            self.navigationController?.pushViewController(historyVC, animated: true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Player_5.isHidden = true
        Player_5_Stack.isHidden = true
        Player_6.isHidden = true
        Player_6_Stack.isHidden = true
        Player_7.isHidden = true
        Player_7_Stack.isHidden = true
        Player_8.isHidden = true
        Player_8_Stack.isHidden = true
        
        
        Player_1_Lose.isHidden = true
        Player_2_Lose.isHidden = true
        Player_3_Lose.isHidden = true
        Player_4_Lose.isHidden = true
        Player_5_Lose.isHidden = true
        Player_6_Lose.isHidden = true
        Player_7_Lose.isHidden = true
        Player_8_Lose.isHidden = true
        
        
    }
    
    @IBAction func addPlayerButtonPressed(_ sender: UIButton) {
        if playerCount < 8 {
            switch playerCount {
            case 2:
                Player_3.isHidden = false
                Player_3_Stack.isHidden = false
            case 3:
                Player_4.isHidden = false
                Player_4_Stack.isHidden = false
            case 4:
                Player_5.isHidden = false
                Player_5_Stack.isHidden = false
            case 5:
                Player_6.isHidden = false
                Player_6_Stack.isHidden = false
                Player_1.font = UIFont.boldSystemFont(ofSize: 15)
                Player_2.font = UIFont.boldSystemFont(ofSize: 15)
                Player_3.font = UIFont.boldSystemFont(ofSize: 15)
                Player_4.font = UIFont.boldSystemFont(ofSize: 15)
                Player_5.font = UIFont.boldSystemFont(ofSize: 15)
                Player_6.font = UIFont.boldSystemFont(ofSize: 15)
                Player_7.font = UIFont.boldSystemFont(ofSize: 15)
                Player_8.font = UIFont.boldSystemFont(ofSize: 15)
                Player_1_Lives.font = UIFont.boldSystemFont(ofSize: 40)
                Player_2_Lives.font = UIFont.boldSystemFont(ofSize: 40)
                Player_3_Lives.font = UIFont.boldSystemFont(ofSize: 40)
                Player_4_Lives.font = UIFont.boldSystemFont(ofSize: 40)
                Player_5_Lives.font = UIFont.boldSystemFont(ofSize: 40)
                Player_6_Lives.font = UIFont.boldSystemFont(ofSize: 40)
                Player_7_Lives.font = UIFont.boldSystemFont(ofSize: 40)
                Player_8_Lives.font = UIFont.boldSystemFont(ofSize: 40)
                
                
                Vertical_Stack_View.spacing = 0
                
                
            case 6:
                Player_7.isHidden = false
                Player_7_Stack.isHidden = false
            case 7:
                Player_8.isHidden = false
                Player_8_Stack.isHidden = false
            default:
                break
            }
            playerCount += 1
        }
    }
    
    @IBAction func removePlayerButtonPressed(_ sender: UIButton) {
        if playerCount > 2 {
            switch playerCount {
            case 3:
                Player_3.isHidden = true
                Player_3_Stack.isHidden = true
            case 4:
                Player_4.isHidden = true
                Player_4_Stack.isHidden = true
            case 5:
                Player_5.isHidden = true
                Player_5_Stack.isHidden = true
            case 6:
                Player_6.isHidden = true
                Player_6_Stack.isHidden = true
                Player_1.font = UIFont.boldSystemFont(ofSize: 30)
                Player_2.font = UIFont.boldSystemFont(ofSize: 30)
                Player_3.font = UIFont.boldSystemFont(ofSize: 30)
                Player_4.font = UIFont.boldSystemFont(ofSize: 30)
                Player_5.font = UIFont.boldSystemFont(ofSize: 30)
                Player_6.font = UIFont.boldSystemFont(ofSize: 30)
                Player_7.font = UIFont.boldSystemFont(ofSize: 30)
                Player_8.font = UIFont.boldSystemFont(ofSize: 30)
                Player_1_Lives.font = UIFont.boldSystemFont(ofSize: 70)
                Player_2_Lives.font = UIFont.boldSystemFont(ofSize: 70)
                Player_3_Lives.font = UIFont.boldSystemFont(ofSize: 70)
                Player_4_Lives.font = UIFont.boldSystemFont(ofSize: 70)
                Player_5_Lives.font = UIFont.boldSystemFont(ofSize: 70)
                Player_6_Lives.font = UIFont.boldSystemFont(ofSize: 70)
                Player_7_Lives.font = UIFont.boldSystemFont(ofSize: 70)
                Player_8_Lives.font = UIFont.boldSystemFont(ofSize: 70)
                
                
                Vertical_Stack_View.spacing = 5
            case 7:
                Player_7.isHidden = true
                Player_7_Stack.isHidden = true
            case 8:
                Player_8.isHidden = true
                Player_8_Stack.isHidden = true
            default:
                break
            }
            playerCount -= 1
        }
    }
    
    @IBAction func addChunkButtonPressed(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Add Number", message: "Enter a number to add", preferredStyle: .alert)
        
        alertController.addTextField { (textField) in
            textField.placeholder = "Number"
            textField.keyboardType = .numberPad
        }
        
        let confirmAction = UIAlertAction(title: "OK", style: .default) { (_) in
            if let numberStr = alertController.textFields?[0].text, let number = Int(numberStr) {
                self.addNumberToLifeCount(number, forPlayer: sender.tag)
                let action = "Player \(sender.tag) added \(number) lives."
                self.actions.append(action)
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    func addNumberToLifeCount(_ number: Int, forPlayer playerTag: Int) {
        var playerLifeCount = 0
        
        switch playerTag {
        case 1:
            playerLifeCount = player1LifeCount
        case 2:
            playerLifeCount = player2LifeCount
        case 3:
            playerLifeCount = player3LifeCount
        case 4:
            playerLifeCount = player4LifeCount
        case 5:
            playerLifeCount = player5LifeCount
        case 6:
            playerLifeCount = player6LifeCount
        case 7:
            playerLifeCount = player7LifeCount
        case 8:
            playerLifeCount = player8LifeCount
        default:
            break
        }
        
        playerLifeCount += number
        if playerLifeCount > 999 {
            playerLifeCount = 999
        }
        
        switch playerTag {
        case 1:
            player1LifeCount = playerLifeCount
            Player_1_Lives.text = "\(playerLifeCount)"
        case 2:
            player2LifeCount = playerLifeCount
            Player_2_Lives.text = "\(playerLifeCount)"
        case 3:
            player3LifeCount = playerLifeCount
            Player_3_Lives.text = "\(playerLifeCount)"
        case 4:
            player4LifeCount = playerLifeCount
            Player_4_Lives.text = "\(playerLifeCount)"
        case 5:
            player5LifeCount = playerLifeCount
            Player_5_Lives.text = "\(playerLifeCount)"
        case 6:
            player6LifeCount = playerLifeCount
            Player_6_Lives.text = "\(playerLifeCount)"
        case 7:
            player7LifeCount = playerLifeCount
            Player_7_Lives.text = "\(playerLifeCount)"
        case 8:
            player8LifeCount = playerLifeCount
            Player_8_Lives.text = "\(playerLifeCount)"
        default:
            break
        }
    }
    
    
    
    @IBAction func subtractChunkButtonPressed(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Subtract Number", message: "Enter a number to subtract", preferredStyle: .alert)
        
        alertController.addTextField { (textField) in
            textField.placeholder = "Number"
            textField.keyboardType = .numberPad
        }
        
        let confirmAction = UIAlertAction(title: "OK", style: .default) { (_) in
            if let numberStr = alertController.textFields?[0].text, let number = Int(numberStr) {
                self.subtractNumberFromLifeCount(number, forPlayer: sender.tag)
                let action = "Player \(sender.tag) lost \(number) lives."
                self.actions.append(action)
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    func subtractNumberFromLifeCount(_ number: Int, forPlayer playerTag: Int) {
        var playerLifeCount = 0
        var playerLoseLabel: UILabel?
        
        switch playerTag {
        case 1:
            playerLifeCount = player1LifeCount
            playerLoseLabel = Player_1_Lose
        case 2:
            playerLifeCount = player2LifeCount
            playerLoseLabel = Player_2_Lose
        case 3:
            playerLifeCount = player3LifeCount
            playerLoseLabel = Player_3_Lose
        case 4:
            playerLifeCount = player4LifeCount
            playerLoseLabel = Player_4_Lose
        case 5:
            playerLifeCount = player5LifeCount
            playerLoseLabel = Player_5_Lose
        case 6:
            playerLifeCount = player6LifeCount
            playerLoseLabel = Player_6_Lose
        case 7:
            playerLifeCount = player7LifeCount
            playerLoseLabel = Player_7_Lose
        case 8:
            playerLifeCount = player8LifeCount
            playerLoseLabel = Player_8_Lose
        default:
            break
        }
        
        if playerLifeCount <= number {
            playerLifeCount = 0
            playerLoseLabel?.isHidden = false
        } else {
            playerLifeCount -= number
        }
        
        // Update the player's life count label
        switch playerTag {
        case 1:
            player1LifeCount = playerLifeCount
            Player_1_Lives.text = "\(player1LifeCount)"
        case 2:
            player2LifeCount = playerLifeCount
            Player_2_Lives.text = "\(player2LifeCount)"
        case 3:
            player3LifeCount = playerLifeCount
            Player_3_Lives.text = "\(player3LifeCount)"
        case 4:
            player4LifeCount = playerLifeCount
            Player_4_Lives.text = "\(player4LifeCount)"
        case 5:
            player5LifeCount = playerLifeCount
            Player_5_Lives.text = "\(player5LifeCount)"
        case 6:
            player6LifeCount = playerLifeCount
            Player_6_Lives.text = "\(player6LifeCount)"
        case 7:
            player7LifeCount = playerLifeCount
            Player_7_Lives.text = "\(player7LifeCount)"
        case 8:
            player8LifeCount = playerLifeCount
            Player_8_Lives.text = "\(player8LifeCount)"
        default:
            break
        }
    }
    
    
    
    
    @IBAction func plusButtonPressed(_ sender: UIButton) {
        var action = ""
        
        switch sender.tag {
        case 1:
            player1LifeCount += 1
            if player1LifeCount > 999 {
                player1LifeCount = 999
            }
            Player_1_Lives.text = "\(player1LifeCount)"
            action = "Player 1 gained one life."
        case 2:
            player2LifeCount += 1
            if player2LifeCount > 999 {
                player2LifeCount = 999
            }
            Player_2_Lives.text = "\(player2LifeCount)"
            action = "Player 2 gained one life."
        case 3:
            player3LifeCount += 1
            if player3LifeCount > 999 {
                player3LifeCount = 999
            }
            Player_3_Lives.text = "\(player3LifeCount)"
            action = "Player 3 gained one life."
        case 4:
            player4LifeCount += 1
            if player4LifeCount > 999 {
                player4LifeCount = 999
            }
            Player_4_Lives.text = "\(player4LifeCount)"
            action = "Player 4 gained one life."
        case 5:
            player5LifeCount += 1
            if player5LifeCount > 999 {
                player5LifeCount = 999
            }
            Player_5_Lives.text = "\(player5LifeCount)"
            action = "Player 5 gained one life."
        case 6:
            player6LifeCount += 1
            if player6LifeCount > 999 {
                player6LifeCount = 999
            }
            Player_6_Lives.text = "\(player6LifeCount)"
            action = "Player 6 gained one life."
        case 7:
            player7LifeCount += 1
            if player7LifeCount > 999 {
                player7LifeCount = 999
            }
            Player_7_Lives.text = "\(player7LifeCount)"
            action = "Player 7 gained one life."
        case 8:
            player8LifeCount += 1
            if player8LifeCount > 999 {
                player8LifeCount = 999
            }
            Player_8_Lives.text = "\(player8LifeCount)"
            action = "Player 8 gained one life."
        default:
            break
        }
        actions.append(action)
        
    }
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        var action = ""
        var playerLifeCount = 0
        var playerLoseLabel: UILabel?
        
        switch sender.tag {
        case 1:
            player1LifeCount -= 1
            playerLifeCount = player1LifeCount
            playerLoseLabel = Player_1_Lose
            action = "Player 1 lost one life."
        case 2:
            player2LifeCount -= 1
            playerLifeCount = player2LifeCount
            playerLoseLabel = Player_2_Lose
            action = "Player 2 lost one life."
        case 3:
            player3LifeCount -= 1
            playerLifeCount = player3LifeCount
            playerLoseLabel = Player_3_Lose
            action = "Player 3 lost one life."
        case 4:
            player4LifeCount -= 1
            playerLifeCount = player4LifeCount
            playerLoseLabel = Player_4_Lose
            action = "Player 4 lost one life."
        case 5:
            player5LifeCount -= 1
            playerLifeCount = player5LifeCount
            playerLoseLabel = Player_5_Lose
            action = "Player 5 lost one life."
        case 6:
            player6LifeCount -= 1
            playerLifeCount = player6LifeCount
            playerLoseLabel = Player_6_Lose
            action = "Player 6 lost one life."
        case 7:
            player7LifeCount -= 1
            playerLifeCount = player7LifeCount
            playerLoseLabel = Player_7_Lose
            action = "Player 7 lost one life."
        case 8:
            player8LifeCount -= 1
            playerLifeCount = player8LifeCount
            playerLoseLabel = Player_8_Lose
            action = "Player 8 lost one life."
        default:
            break
        }
        
        if playerLifeCount <= 0 {
            playerLifeCount = 0
            playerLoseLabel?.isHidden = false
        }
        
        // Update the player's life count label
        switch sender.tag {
        case 1:
            player1LifeCount = playerLifeCount
            Player_1_Lives.text = "\(player1LifeCount)"
        case 2:
            player2LifeCount = playerLifeCount
            Player_2_Lives.text = "\(player2LifeCount)"
        case 3:
            player3LifeCount = playerLifeCount
            Player_3_Lives.text = "\(player3LifeCount)"
        case 4:
            player4LifeCount = playerLifeCount
            Player_4_Lives.text = "\(player4LifeCount)"
        case 5:
            player5LifeCount = playerLifeCount
            Player_5_Lives.text = "\(player5LifeCount)"
        case 6:
            player6LifeCount = playerLifeCount
            Player_6_Lives.text = "\(player6LifeCount)"
        case 7:
            player7LifeCount = playerLifeCount
            Player_7_Lives.text = "\(player7LifeCount)"
        case 8:
            player8LifeCount = playerLifeCount
            Player_8_Lives.text = "\(player8LifeCount)"
        default:
            break
        }
        actions.append(action)
        
    }
    
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        if UIDevice.current.orientation.isLandscape {
            Player_1_Lives.font = UIFont.boldSystemFont(ofSize: 20)
            Player_2_Lives.font = UIFont.boldSystemFont(ofSize: 20)
            Player_3_Lives.font = UIFont.boldSystemFont(ofSize: 20)
            Player_4_Lives.font = UIFont.boldSystemFont(ofSize: 20)
            Player_5_Lives.font = UIFont.boldSystemFont(ofSize: 20)
            Player_6_Lives.font = UIFont.boldSystemFont(ofSize: 20)
            Player_7_Lives.font = UIFont.boldSystemFont(ofSize: 20)
            Player_8_Lives.font = UIFont.boldSystemFont(ofSize: 20)
            Player_1.font = UIFont.boldSystemFont(ofSize: 15)
            Player_2.font = UIFont.boldSystemFont(ofSize: 15)
            Player_3.font = UIFont.boldSystemFont(ofSize: 15)
            Player_4.font = UIFont.boldSystemFont(ofSize: 15)
            Player_5.font = UIFont.boldSystemFont(ofSize: 15)
            Player_6.font = UIFont.boldSystemFont(ofSize: 15)
            Player_7.font = UIFont.boldSystemFont(ofSize: 15)
            Player_8.font = UIFont.boldSystemFont(ofSize: 15)
            
            Vertical_Stack_View.axis = .horizontal
            Nav_Stack_View.axis = .vertical
            Player_1_Stack.axis = .vertical
            Player_2_Stack.axis = .vertical
            Player_3_Stack.axis = .vertical
            Player_4_Stack.axis = .vertical
            Player_5_Stack.axis = .vertical
            Player_6_Stack.axis = .vertical
            Player_7_Stack.axis = .vertical
            Player_8_Stack.axis = .vertical
            Player_1.transform = CGAffineTransform(rotationAngle: CGFloat.pi / -2)
            Player_2.transform = CGAffineTransform(rotationAngle: CGFloat.pi / -2)
            Player_3.transform = CGAffineTransform(rotationAngle: CGFloat.pi / -2)
            Player_4.transform = CGAffineTransform(rotationAngle: CGFloat.pi / -2)
            Player_5.transform = CGAffineTransform(rotationAngle: CGFloat.pi / -2)
            Player_6.transform = CGAffineTransform(rotationAngle: CGFloat.pi / -2)
            Player_7.transform = CGAffineTransform(rotationAngle: CGFloat.pi / -2)
            Player_8.transform = CGAffineTransform(rotationAngle: CGFloat.pi / -2)
            Nav_Stack_View.transform = CGAffineTransform(rotationAngle: CGFloat.pi / -2)
            Vertical_Stack_View.spacing = -10
            
        } else {
            
            Player_1_Lives.font = UIFont.boldSystemFont(ofSize: 70)
            Player_2_Lives.font = UIFont.boldSystemFont(ofSize: 70)
            Player_3_Lives.font = UIFont.boldSystemFont(ofSize: 70)
            Player_4_Lives.font = UIFont.boldSystemFont(ofSize: 70)
            Player_5_Lives.font = UIFont.boldSystemFont(ofSize: 70)
            Player_6_Lives.font = UIFont.boldSystemFont(ofSize: 70)
            Player_7_Lives.font = UIFont.boldSystemFont(ofSize: 70)
            Player_8_Lives.font = UIFont.boldSystemFont(ofSize: 70)
            Player_1.font = UIFont.boldSystemFont(ofSize: 30)
            Player_2.font = UIFont.boldSystemFont(ofSize: 30)
            Player_3.font = UIFont.boldSystemFont(ofSize: 30)
            Player_4.font = UIFont.boldSystemFont(ofSize: 30)
            Player_5.font = UIFont.boldSystemFont(ofSize: 30)
            Player_6.font = UIFont.boldSystemFont(ofSize: 30)
            Player_7.font = UIFont.boldSystemFont(ofSize: 30)
            Player_8.font = UIFont.boldSystemFont(ofSize: 30)
            
            Vertical_Stack_View.axis = .vertical
            Nav_Stack_View.axis = .horizontal
            Player_1_Stack.axis = .horizontal
            Player_2_Stack.axis = .horizontal
            Player_3_Stack.axis = .horizontal
            Player_4_Stack.axis = .horizontal
            Player_5_Stack.axis = .horizontal
            Player_6_Stack.axis = .horizontal
            Player_7_Stack.axis = .horizontal
            Player_8_Stack.axis = .horizontal
            Player_1.transform = CGAffineTransform.identity
            Player_2.transform = CGAffineTransform.identity
            Player_3.transform = CGAffineTransform.identity
            Player_4.transform = CGAffineTransform.identity
            Player_5.transform = CGAffineTransform.identity
            Player_6.transform = CGAffineTransform.identity
            Player_7.transform = CGAffineTransform.identity
            Player_8.transform = CGAffineTransform.identity
            Nav_Stack_View.transform = CGAffineTransform.identity
            
        }
    }
}

