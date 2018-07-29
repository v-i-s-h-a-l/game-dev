//
//  Sound.swift
//  July-28
//
//  Created by Administrator on 29/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import Foundation

struct Sound{
    enum Default_Sound {
        case correctAnswer,wrongAnswer
        var soundURL:URL?{
            switch self {
            case .correctAnswer:
                return Sound(soundName: "CorrectAnswerSound", soundExtension: "mov").path()
            case .wrongAnswer:
                return Sound(soundName: "WrongAnswerSound", soundExtension: "mov").path()
            }
        }
    }
    var soundName:String
    var soundExtension:String
    var bundle:Bundle { return Bundle.main}
    
    func path()->URL?{
        return bundle.url(forResource: soundName, withExtension: soundExtension)
    }
    
}
