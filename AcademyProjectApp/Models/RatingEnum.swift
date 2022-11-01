//
//  RatingEnum.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 26/10/22.
//

import Foundation


enum RatingEnum : String, CaseIterable{
    case Bad = "bad"
    case Poor = "poor"
    case Average = "average"
    case Good = "good"
    case Happy = "happy"
    
    public static func strToRatingEnum(str: String) -> RatingEnum {
        switch str {
        case "bad" :
            return RatingEnum.Bad
        case "poor" :
            return RatingEnum.Poor
        case "average" :
            return RatingEnum.Average
        case "good" :
            return RatingEnum.Good
        case "happy" :
            return RatingEnum.Happy
        default :
            return RatingEnum.Average
        }
    }
}
