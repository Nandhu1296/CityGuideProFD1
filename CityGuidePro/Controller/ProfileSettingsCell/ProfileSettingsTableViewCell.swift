//
//  ProfileSettingsTableViewCell.swift
//  CityGuidePro
//
//  Created by nandha on 13/02/23.
//

import UIKit

import Foundation

import MapKit
import AVFoundation
import CoreHaptics
import Speech
import CoreLocation

class ProfileSettingsTableViewCell: UITableViewCell, AVSpeechSynthesizerDelegate, SFSpeechRecognizerDelegate {
    
    let locationManager = CLLocationManager()
    
    let narator = AVSpeechSynthesizer()
    var speechRecognizer = SpeechRecognizer()
    var speechFlag = false
    var muteFlag = false
    var explorationFlag = true
    var voiceSearchFlag = false
    
    @IBOutlet weak var bgView: CustomShadowView!
    @IBOutlet weak var profileIcon: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func viewDidLoad() {
        
        
        speakThis(sentence: "Profile Settings")
        
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func speakThis(sentence : String){
        let audioSession = AVAudioSession.sharedInstance()
        do
        {
            try audioSession.setCategory(AVAudioSession.Category.playAndRecord)
            try audioSession.setMode(AVAudioSession.Mode.default)
            //try audioSession.setMode(AVAudioSessionModeMeasurement)
            try audioSession.setActive(true, options: .notifyOthersOnDeactivation)
            try AVAudioSession.sharedInstance().overrideOutputAudioPort(AVAudioSession.PortOverride.speaker)
        }
        catch
        {
            print("audioSession properties weren't set because of an error.")
        }
        
        var user = 1
        let userProfile = UserDefaults.standard.value(forKey: "checkmarks") as? [String:Int]
        if userProfile == nil{
            user = 0
        }
        else if !userProfile!.isEmpty{
            user = userProfile!["User Category"]!
        }
        
        let utterance = AVSpeechUtterance(string: sentence)
        if user == 0{
            utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
            utterance.rate = 0.7
        }
        else{
            utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
            utterance.rate = 0.55
        }
        
        if(narator.isSpeaking && explorationFlag && voiceSearchFlag){
            narator.stopSpeaking(at: .immediate)
        }
        
        if !muteFlag{
            narator.speak(utterance)
        }
        else{
            narator.stopSpeaking(at: .immediate)
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
