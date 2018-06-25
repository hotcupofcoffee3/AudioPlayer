//
//  ViewController.swift
//  AudioPlayer
//
//  Created by Adam Moore on 6/9/18.
//  Copyright © 2018 Adam Moore. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {
    
    @IBAction func play(_ sender: UIButton) {
        
        player.play()
        
    }
    
    @IBAction func pause(_ sender: UIButton) {
        
        player.pause()
        
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        
        player.volume = slider.value
        
    }
    
    @IBOutlet weak var slider: UISlider!
    
    var player = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let audioPath = Bundle.main.path(forResource: "bach", ofType: "mp3")
        
        do {
            
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
        } catch {
            
            
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

