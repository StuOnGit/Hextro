//
//  Tip.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 25/10/22.
//

import Foundation

struct Tip : Identifiable, Equatable {
    
    static func == (lhs: Tip, rhs: Tip) -> Bool {
        return lhs.id == rhs.id
    }
    
    let id = UUID()
    
    var title : String
    var icon : String
    var description : String
    var goal : Goal?
}
