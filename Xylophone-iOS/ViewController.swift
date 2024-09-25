//
//  ViewController.swift
//  Xylophone-iOS
//
//  Created by Eng.Aseel on 25/09/2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    //all btns are connected to the same action
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.titleLabel!.text!)
        
        //Reduces the button's opacity that got pressed to half.
        sender.alpha = 0.5
        
        //this code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's btn's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
        

    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

