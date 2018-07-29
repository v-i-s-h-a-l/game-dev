//
//  Country.swift
//  July-28
//
//  Created by Vishal Singh on 28/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import Foundation

//struct Country {
//
//    let name: String
//    let capitalCityName: String
//    let flagImageName: String
//    let neighbouringCountries: [Country]
//    let waterBodies: [String]
//}

enum Country: String, CaseIterable {
    
    // AFRICA
    case algeria, angola, benin, botswana, burundi, cameroon, chad, comoros, djibouti, egypt, eritrea, ethiopia, gabon, gambia, ghana, guinea, kenya, lesotho, liberia, libya, madagascar, malawi, mali, mauritania, mauritius, morocco, mozambique, namibia, niger, nigeria, rwanda, senegal, seychelles, somalia, sudan, tanzania, togo, tunisia, uganda, zambia, zimbabwe

    
    // ASIA
    case afghanistan, armenia, bangladesh, bhutan, brunei, china, cyprus, georgia, india, indonesia, iran, iraq, israel, japan, jordan, kuwait, lebanon, malaysia, maldives, nepal, pakistan, russia, singapore, syria, turkey
    
    // EUROPE
    case albania, andorra, austria, azerbaijan, belarus, belgium, bulgaria, croatia, denmark, england, estonia, finland, france, germany, greece, hungary, iceland, ireland, italy, kazakhstan, kosovo, latvia, liechtenstein, lithuania, luxembourg, macedonia, malta, moldova, monaco, montenegro, netherlands, norway, poland, portugal, romania, scotland, serbia, slovakia, slovenia, spain, sweden, switzerland, ukraine, wales

    // NORTH AMERICA
    case bahamas, barbados, belize, canada, cuba, dominica, guatemala, haiti, honduras, jamaica, mexico, nicaragua, panama
    
    // SOUTH AMERICA
    case argentina, brazil, chile, colombia, ecuador, guyana, paraguay, peru, suriname, uruguay, venezuela

    // AUSTRALIA AND OCEANIA
    case australia, fiji, kiribati, micronesia, nauru, palau, samoa, tuvalu, vanuatu

}
