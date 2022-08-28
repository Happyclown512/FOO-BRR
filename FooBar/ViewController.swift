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
        
        
        //let sound = Bundle.main.path(forResource: "FOO", ofType: "mp3")
        //audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
    
    }
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func OnTap(_ sender: Any) {
        NUM += 1
        
        
        if ((NUM % 3 == 0 ) && (NUM % 5 == 0)){ //foobar
            view.backgroundColor = UIColor.systemBlue
            displayLabel.text = "FOO\nBAR"
            
            //sound
            //let url = Bundle.main.url(forResource: "FOOBAR", withExtension: "m4a")
            //audioPlayer = try!  AVAudioPlayer(contentsOf: url!)
            //audioPlayer.play()
        }
        else if(NUM % 3 == 0 ){ //foo
            view.backgroundColor = UIColor.systemRed
            displayLabel.text = "FOO"
            
            
            //audioPlayer.play()
        }
        else if (NUM % 5 == 0){ //bar
            view.backgroundColor = UIColor.systemGreen
            displayLabel.text = "BAR"
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

