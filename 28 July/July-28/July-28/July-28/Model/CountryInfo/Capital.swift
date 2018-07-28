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
            
        // AFRICA
        case .algeria: return "Algiers"
        case .angola: return "Luanda"
        case .benin: return "Porto-Novo"
        case .botswana: return "Gaborone"
        case .burundi: return "Bujumbura"
        case .cameroon: return "Yaounde"
        case .chad: return "N'Djamena"
        case .comoros: return "Moroni"
        case .djibouti: return "Djibouti city"
        case .egypt: return "Cairo"
        case .eritrea: return "Asmara"
        case .ethiopia: return "Addis Ababa"
        case .gabon: return "Libreville"
        case .gambia: return "Banjul"
        case .ghana: return "Accra"
        case .guinea: return "Conakry"
        case .kenya: return "Nairobi"
        case .lesotho: return "Maseru"
        case .liberia: return "Monrovia"
        case .libya: return "Tripoli"
        case .madagascar: return "Antananarivo"
        case .malawi: return "Lilongwe"
        case .mali: return "Bamako"
        case .mauritania: return "Nouakchott"
        case .mauritius: return "Port Louis"
        case .morocco: return "Rabat"
        case .mozambique: return "Maputo"
        case .namibia: return "Windhoek"
        case .niger: return "Niamey"
        case .nigeria: return "Abuja"
        case .rwanda: return "Kigali"
        case .senegal: return "Dakar"
        case .seychelles: return "Victoria"
        case .somalia: return "Mogadishu"
        case .sudan: return "Khartoum"
        case .tanzania: return "Dodoma"
        case .togo: return "Lomé"
        case .tunisia: return "Tunis"
        case .uganda: return "Kampala"
        case .zambia: return "Lusaka"
        case .zimbabwe: return "Harare"

            
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
