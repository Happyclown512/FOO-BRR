//
//  ViewController.swift
//  FooBar
//
//  Created by Caden on 8/26/22.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    var NUM = 4
    
    var audioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = "\(NUM)"
        
        
        
    
    }
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func OnTap(_ sender: Any) {
        NUM += 1
        
        
        if ((NUM % 3 == 0 ) && (NUM % 5 == 0)){ //foobar
            view.backgroundColor = UIColor.systemBlue
            displayLabel.text = "FOO\nBAR"
            
            let sound = Bundle.main.url(forResource: "foobar", withExtension: "m4a")
            audioPlayer = try! AVAudioPlayer(contentsOf: sound!)
            audioPlayer.play()
            
            
        }
        else if(NUM % 3 == 0 ){ //foo
            view.backgroundColor = UIColor.systemRed
            displayLabel.text = "FOO"
            
            
            let sound = Bundle.main.url(forResource: "foo", withExtension: "m4a")
            audioPlayer = try! AVAudioPlayer(contentsOf: sound!)
            
            audioPlayer.play()
        }
        else if (NUM % 5 == 0){ //bar
            view.backgroundColor = UIColor.systemGreen
            displayLabel.text = "BAR"
            
            let sound = Bundle.main.url(forResource: "bar", withExtension: "m4a")
            audioPlayer = try! AVAudioPlayer(contentsOf: sound!)
            
            audioPlayer.play()
        }
        else {
            view.backgroundColor = UIColor.black
            displayLabel.text = "\(NUM)"
        }
    }
    
    @IBAction func onLongPress(_ sender: Any) {
        NUM = 0
        displayLabel.text = ""
        view.backgroundColor = UIColor.black
    }
    

}

