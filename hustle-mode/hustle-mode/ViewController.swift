//
//  ViewController.swift
//  hustle-mode
//
//  Created by Arek on 13/04/2018.
//  Copyright © 2018 Arek. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var baloons: UIImageView!

    @IBOutlet weak var baloonsLeft: UIImageView!
    @IBOutlet weak var BaloonsRight: UIImageView!
    
    
    
    var player: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let path = Bundle.main.path(forResource: "Applausesoundeffect", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
            
        } catch let error as NSError {
            print(error.description)
        }
    }

   
    @IBAction func powerBtnPressed(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerBtn.isHidden = true
        
    
   

        player.play()
        
        UIView.animate(withDuration: 3.0, animations: {
            self.baloons.frame = CGRect(x: 100, y: -150, width: 200, height: 200)
            self.baloonsLeft.frame = CGRect(x: 230, y: -140, width: 150, height: 150)
            self.BaloonsRight.frame = CGRect(x: 8, y: -144, width: 150, height: 150)
        }) { (finished) in
    

            self.cloudHolder.isHidden = true
        }
     
    }
    

}

