//
//  SoundManager.swift
//  July-28
//
//  Created by Administrator on 29/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import Foundation
import AVFoundation


struct  SoundManager {
    
 static func play(_ soundURL: URL?){
    guard let soundURL = soundURL else { return }
    do {
       let audiPlayer = try AVAudioPlayer(contentsOf: soundURL)
        audiPlayer.prepareToPlay()
        audiPlayer.play()
    }catch{
        
    }
    
    }
    
}



