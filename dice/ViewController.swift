//
//  ViewController.swift
//  dice
//
//  Created by Muhammed Salih Bulut on 22.11.2023.
//

import UIKit

class ViewController: UIViewController {

    //Burda zar fotolarını tanımladık
    @IBOutlet weak var diceimage1: UIImageView!
    @IBOutlet weak var diceimage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*who      what       value
        diceimage1.image = UIImage(imageLiteralResourceName: "dice6")
         */
    }
    /* bu kod burdada çalışıyor aşağıdada
    let diceArray = [UIImage(named: "dice"),
                     UIImage(named: "dice2"),
                     UIImage(named: "dice3"),
                     UIImage(named: "dice4"),
                     UIImage(named: "dice5"),
                     UIImage(named: "dice6")]
     */
    @IBAction func rollbutton(_ sender: UIButton) {
        
        //Bir zar Array'i oluşturarak içinden rastgele bir tane seçebilelim
        let diceArray = [UIImage(named: "dice4"),
                         UIImage(named: "dice6"),
                         UIImage(named: "dice3"),
                         UIImage(named: "dice"),
                         UIImage(named: "dice5"),
                         UIImage(named: "dice2"),
                         UIImage(named: "dice"),
                         UIImage(named: "dice"),
                         UIImage(named: "dice6"),
                         UIImage(named: "dice3"),
                         UIImage(named: "dice4"),
                         UIImage(named: "dice5"),
                         UIImage(named: "dice6"),
                         UIImage(named: "dice"),
                         UIImage(named: "dice2"),
                         UIImage(named: "dice4"),
                         UIImage(named: "dice4"),
                         UIImage(named: "dice3"),
                         UIImage(named: "dice6"),
                         UIImage(named: "dice"),
                         UIImage(named: "dice"),
                         UIImage(named: "dice2"),
                         UIImage(named: "dice3"),
                         UIImage(named: "dice4"),
                         UIImage(named: "dice5"),
                         UIImage(named: "dice6")]
                                          
        
        /*Burda zar Array'ini kullanarak içinden rastgele  bir eleman seçip ekrana yansıttık.
         Bu kısımda shownumbers kısmı yerine kullanılabilir.
        diceimage1.image = diceArray[ Int.random(in: 0...5)]
        diceimage2.image = diceArray[ Int.random(in: 0...5)]
         
         
         
         let showNumbers = diceArray[Int.random(in: 0...5)]
         let showNumbers2 = diceArray[Int.random(in: 0...5)]
         diceimage1.image = showNumbers
         diceimage2.image = showNumbers2
         */
            let totalFrames = 20
            var currentFrame = 0
        
            func animateDiceRoll() {
                
                let showNumbers = diceArray[Int.random(in: 0...20)]
                let showNumbers2 = diceArray[Int.random(in: 0...20)]
                diceimage1.image = showNumbers
                diceimage2.image = showNumbers2
               
                
                    if currentFrame < totalFrames {
                        let diceImage = diceArray[currentFrame % diceArray.count]
                        UIView.transition(with: diceimage2,
                                          duration: 0.1,
                                          options: .transitionCrossDissolve,
                                          animations: {
                                                self.diceimage2.image = diceImage
                                          },
                                          completion: nil)
                        currentFrame += 1
                        // Animasyon devam ediyor
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            animateDiceRoll()
                        }
                        //Bu kısımda foto ve animasyon ekliyoruz
                        UIView.transition(with: diceimage1,
                                          duration: 0.1,
                                          options: .transitionCrossDissolve,
                                          animations: {
                                                self.diceimage1.image = diceImage
                                            
                                          },
                                          completion: nil)
                        currentFrame += 1
                        // Animasyon devam ediyor
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            animateDiceRoll()
                        }
                    }
                }
        animateDiceRoll()
    }
}
