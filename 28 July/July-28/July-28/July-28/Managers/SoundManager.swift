//
//  SoundManager.swift
//  July-28
//
//  Created by Administrator on 29/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import Foundation
import UIKit
import AVKit
struct  SoundManager {
   
   static func play(_ soundURL: URL?){
        guard let soundURL = soundURL else {return}
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.player = AVPlayer(url: soundURL)
        appDelegate.player?.play()
    }
    
}



