//
//  Goal.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 25/10/22.
//

import Foundation

struct Goal: Identifiable {
    let id = UUID()
    
    var title: String
    var description: String
    var completed: Bool = false
    var isAdded: Bool = false
    //TODO: implement other stuff
}
