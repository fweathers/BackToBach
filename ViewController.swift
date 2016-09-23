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
    }
    
    @IBAction func pauseButtonTapped(_ sender: UIBarButtonItem) {
    }
    @IBAction func stopButtonTapped(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func volumeSliderMoved(_ sender: UISlider) {
    }
    
    @IBAction func scrubberSliderMoved(_ sender: UISlider) {
    }
    
    @IBOutlet weak var scrubberSlider: UISlider!

    @IBOutlet weak var volumeSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
        } catch {
            
            // process error
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

