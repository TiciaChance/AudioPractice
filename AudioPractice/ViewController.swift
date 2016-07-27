//
//  ViewController.swift
//  AudioPractice
//
//  Created by Laticia Chance on 7/26/16.
//  Copyright © 2016 Laticia Chance. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var songTitleLabel: UILabel!
    @IBOutlet weak var pausePlay: UIButton!
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var authentic1Button: UIButton!
    @IBOutlet weak var authentic2Button: UIButton!
    @IBOutlet weak var acceptableButton: UIButton!
    @IBOutlet weak var questionableButton: UIButton!
    @IBOutlet weak var happySongButton: UIButton!
    
    //create a URl
    //the task for the file will be in the bundle
    
//    var authentic1 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("TrenchTownRock", ofType: "mp3")!)
    
    var authentic1Player = AVAudioPlayer()
    
//    var authentic2 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Champion", ofType: "mp3")!)
//    
//    var authentic2Player = AVAudioPlayer()
//    
//    var acceptable = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Work", ofType: "mp3")!)
//    
//    var acceptablePlayer = AVAudioPlayer()
//    
//    var questionable = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("OneDance", ofType: "mp3")!)
//    
//    var questionablePlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        audioPlayer()

        mainLabel.text = "🤔"
        songTitleLabel.hidden = true

        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // song buttons
    @IBAction func authenticOneButtonTapped(sender: AnyObject) {
        
        //TODO: Call property avplayer eg authenticplayer then assign a new url then play
        do {
            
            try authentic1Player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("TrenchTownRock", ofType: "mp3")!))
            
        } catch let error as NSError {
            
            print(error.description)
        }
        
        authentic1Player.play()
        songTitleLabel.hidden = false
        songTitleLabel.text = "Trench Town Rock by Bob Marley"
        
        authentic2Button.enabled = false
        acceptableButton.enabled = false
        questionableButton.enabled = false
        happySongButton.enabled = false
        
    }
    
    @IBAction func authenticTwoButtonTapped(sender: AnyObject) {
        
        do {
            
            try authentic1Player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Champion", ofType: "mp3")!))
            
        } catch let error as NSError {
            
            print(error.description)
        }

        
        authentic1Player.play()
        songTitleLabel.hidden = false
        songTitleLabel.text = "Champion by Buju Banton"
        
        authentic1Button.enabled = false
        acceptableButton.enabled = false
        questionableButton.enabled = false
        happySongButton.enabled = false

    }
    
    @IBAction func acceptableButtonTapped(sender: AnyObject) {
        
        
        do {
            
            try authentic1Player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Work", ofType: "mp3")!))
            
        } catch let error as NSError {
            
            print(error.description)
        }

        
        songTitleLabel.hidden = false
        songTitleLabel.text = "Work by Rihanna "
        
        authentic1Button.enabled = false
        authentic2Button.enabled = false
        questionableButton.enabled = false
        happySongButton.enabled = false

        
    }
    @IBAction func questionableButtonTapped(sender: AnyObject) {

        do {
            
            try authentic1Player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("OneDance", ofType: "mp3")!))
            
        } catch let error as NSError {
            
            print(error.description)
        }
        
        songTitleLabel.hidden = false
        songTitleLabel.text = "One Dance by Drake"
        
        authentic1Button.enabled = false
        acceptableButton.enabled = false
        authentic2Button.enabled = false
        happySongButton.enabled = false

        
    }
    
    
    //play, pause and stop buttons
    
    
    @IBAction func restartButtonTapped(sender: AnyObject) {
        
        if authentic1Player.playing == true {
            authentic1Player.stop()
            authentic1Player.currentTime = 0
            authentic1Player.play()
        }
        
//        if authentic2Player.playing == true {
//            authentic2Player.stop()
//            authentic2Player.currentTime = 0
//            authentic2Player.play()
//        }
//        
//        if acceptablePlayer.playing == true {
//            acceptablePlayer.stop()
//            acceptablePlayer.currentTime = 0
//            acceptablePlayer.play()
//            
//        }
//        
//        if questionablePlayer.playing == true {
//            questionablePlayer.stop()
//            questionablePlayer.currentTime = 0
//            questionablePlayer.play()
//        }
//        
        
    }
    
    @IBAction func pauseButtonTapped(sender: AnyObject) {
        
         //var trackPlayed = 0
        
        print("Pausing")
        if pausePlay.titleLabel?.text == "Pause" {
            pausePlay.setTitle("Play", forState: UIControlState.Normal)
        } else {
            pausePlay.setTitle("Pause", forState: UIControlState.Normal)
        }
        // TODO: Create a bool value as a property to check playing -> isPlaying = true
        // TODO: Create one videoPlayer and change the url in the button action
        
        
        if authentic1Player.playing == true {
            authentic1Player.pause()
        }else{
            print("not playing")
                authentic1Player.play()
        }
//        }else if authentic2Player.playing == true {
//            authentic2Player.pause()
//        }else if acceptablePlayer.playing == true {
//            authentic2Player.pause()
//        }else if acceptablePlayer.playing == true {
//            acceptablePlayer.pause()
//        }else if questionablePlayer.playing == true {
//            questionablePlayer.pause()
//        }
        
        //how to get the pause/play to work w/o overlapping songssssss?????
        
        
        // when i press pause for the 2nd song - the 2nd song stops and the 1st song starts
        
//        if authentic1Player.playing  == true {
//            trackPlayed = 1
//            authentic1Player.pause()
//        }else if authentic2Player.playing == true {
//            trackPlayed = 2
//            authentic2Player.pause()
//        } else if acceptablePlayer.playing == true {
//            trackPlayed = 3
//            acceptablePlayer.pause()
//            print("acceptable player paused")
//        } else if questionablePlayer.playing == true {
//            trackPlayed = 4
//            questionablePlayer.pause()
//        }
//        
//        if !authentic1Player.playing && !authentic2Player.playing && !acceptablePlayer.playing && !questionablePlayer.playing {
//            switch trackPlayed {
//            case 1 :
//                    authentic1Player.play()
//                
//            case 2 :
//                    authentic2Player.play()
//                
//            case 3 :
//                    acceptablePlayer.play()
//                
//            case 4:
//                questionablePlayer.play()
//            default: print("invalid play")
//            }
//        }
    //check that madesure none of them are playing
    
}




//        else if !authentic1Player.playing  == true {
//            authentic1Player.play()
//        }else if !authentic2Player.playing == true {
//            authentic2Player.play()
//        } else if !acceptablePlayer.playing == true {
//            acceptablePlayer.play()
//        } else if !questionablePlayer.playing == true {
//            questionablePlayer.play()
//        }

    
    // stops the 2nd and plays the 1st
    

//if i press pause on 2nd track - it stops 2nd track and begins playing first track


@IBAction func stopMusicButtonTapped(sender: AnyObject) {
    
    //if stop button is tapped then all buttons are enabled
    
    authentic1Button.enabled = true
    authentic2Button.enabled = true
    acceptableButton.enabled = true
    questionableButton.enabled = true
    
    
    if authentic1Player.playing  == true {
        authentic1Player.stop()
        authentic1Player.currentTime = 0
        
    }
//    
//    if authentic2Player.playing  == true {
//        authentic2Player.stop()
//        authentic2Player.currentTime = 0
//        
//    }
//    
//    if acceptablePlayer.playing  == true {
//        acceptablePlayer.stop()
//        acceptablePlayer.currentTime = 0
//        
//    }
//    
//    if questionablePlayer.playing == true {
//        
//        questionablePlayer.stop()
//        questionablePlayer.currentTime = 0
//        
//    }
    
    
    
    
    //        authentic2Player.stop()
}



func audioPlayer()  {
    
    //trench town rock audio player
 
    
    //champion audio player
//    
//    do {
//        
//        try authentic2Player = AVAudioPlayer(contentsOfURL: authentic2)
//        
//    } catch let error as NSError {
//        
//        print(error.description)
//    }
//    
//    //WORK
//    
//    do {
//        
//        try acceptablePlayer = AVAudioPlayer(contentsOfURL: acceptable)
//        
//    } catch let error as NSError {
//        
//        print(error.description)
//        
//    }
//    
//    //One Dance
//    
//    do {
//        
//        try questionablePlayer = AVAudioPlayer(contentsOfURL: questionable)
//        
//    } catch let error as NSError {
//        
//        print(error.description)
//        
//    }
//    
//}
    }
}