//
//  Capital.swift
//  July-28
//
//  Created by Vishal Singh on 28/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import Foundation

extension Country {
    
    var capital: String {
        switch self {
            
        // ASIA
        case .afghanistan: return "Kabul"
        case .armenia: return "Yerevan"
        case .bangladesh: return "Dhaka"
        case .bhutan: return "Thimphu"
        case .brunei: return "Bandar Seri Begawan"
        case .china: return "Beijing"
        case .cyprus: return "Nicosia"
        case .georgia: return "Tbilisi"
        case .india: return "New Delhi"
        case .indonesia: return "Jakarta"
        case .iran: return "Tehran"
        case .iraq: return "Baghdad"
        case .israel: return "Jerusalem"
        case .japan: return "Tokyo"
        case .jordan: return "Amman"
        case .kuwait: return "Kuwait City"
        case .lebanon: return "Beirut"
        case .malaysia: return "Kuala Lumpur"
        case .maldives: return "Male"
        case .nepal: return "Kathmandu"
        case .pakistan: return "Islamabad"
        case .russia: return "Moscow"
        case .singapore: return "Singapore"
        case .syria: return "Damascus"
        case .turkey: return "Ankara"
        }
    }
}
