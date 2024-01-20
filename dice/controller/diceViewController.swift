//
//  diceViewController.swift
//  dice
//
//  Created by Muhammed Salih Bulut on 4.02.2024.
//

import UIKit

class diceViewController: UIViewController {
    
    
    @IBOutlet weak var diceimage3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func rollbutton2(_ sender: UIButton) {
        let diceArray2 = [UIImage(named: "dice"),
                          UIImage(named: "dice2"),
                          UIImage(named: "dice3"),
                          UIImage(named: "dice4"),
                          UIImage(named: "dice5"),
                          UIImage(named: "dice6"),
                          UIImage(named: "dice"),
                          UIImage(named: "dice2"),
                          UIImage(named: "dice3"),
                          UIImage(named: "dice4"),
                          UIImage(named: "dice5"),
                          UIImage(named: "dice6")]
        
       
        let totalFrames2 = 20
        var currentFrame2 = 0
        
        func animation(){
            
            let showNumbers3 = diceArray2[Int.random(in: 0...11)]
            diceimage3.image = showNumbers3
            
            if currentFrame2 < totalFrames2 {
                let diceImage3 = diceArray2[currentFrame2 % diceArray2.count]
                UIView.transition(with: diceimage3,
                                  duration: 0.1,
                                  options: .transitionCrossDissolve,
                                  animations: {
                    self.diceimage3.image = diceImage3
                },
                                  completion: nil)
                currentFrame2 += 1
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    animation()
                }
            }

        }
        animation()
    }
}
