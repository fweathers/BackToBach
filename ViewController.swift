//
//  ViewController.swift
//  BackToBach
//
//  Created by Felicia Weathers on 9/23/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    let audioPath = Bundle.main.path(forResource: "mozart", ofType: "mp3")

    @IBAction func playButtonTapped(_ sender: UIBarButtonItem) {
        
        player.play()
    }
    
    @IBAction func pauseButtonTapped(_ sender: UIBarButtonItem) {
        
        player.pause()
    }
    @IBAction func stopButtonTapped(_ sender: UIBarButtonItem) {
        
        player.stop()
    }
    
    @IBAction func volumeSliderMoved(_ sender: UISlider) {
        
        player.volume = volumeSlider.value
    }
    
    @IBAction func scrubberSliderMoved(_ sender: UISlider) {
        
        player.currentTime = TimeInterval(scrubberSlider.value)
    }
    
    @IBOutlet weak var scrubberSlider: UISlider!

    @IBOutlet weak var volumeSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
            scrubberSlider.maximumValue = Float(player.duration)
            
        } catch {
            
            // process error
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

