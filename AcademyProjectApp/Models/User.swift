//
//  User.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 26/10/22.
//

import Foundation

class User {
    
    var name : String
    var toDoGoals : [Goal]
    static var instance = User()
    
    private init(){
        name = ""
        toDoGoals = []
    }
    
    
    
    public func addGoal(){
        
    }
    
    public func removeGoal(goal : Goal){
    
    }
    
    public func setName(name : String){
        self.name = name
    }
    
    public func getName() -> String {
        return self.name
    }
}
