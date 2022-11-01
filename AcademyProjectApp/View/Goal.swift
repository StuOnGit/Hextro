//
//  Goal.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 25/10/22.
//

import Foundation

struct Goal: Identifiable, Equatable{
    static func == (lhs: Goal, rhs: Goal) -> Bool {
        return lhs.id == rhs.id
    }
    
    
    let id = UUID()
    
    var title: String
    var description: String
    
    var isAdded: Bool = false
    var completed: Bool = false
    var completionDate : Date?
    var rating: RatingEnum = RatingEnum.Average
    var tips: [Tip]?
    //TODO: implement other stuff
    
}
