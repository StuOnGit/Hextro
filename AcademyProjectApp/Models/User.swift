//
//  User.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 26/10/22.
//

import Foundation

 
private let MAX_GOALS_TO_DO = 5

class User {
    
    var name : String
    var toDoGoals : [Goal]
    var savedTips: [Tip]
    var completedGoals : [Goal]
    
    static var instance = User()

    private init(){
        name = ""
        toDoGoals = []
        savedTips = []
        completedGoals = []
        for i in 1...MAX_GOALS_TO_DO {
            toDoGoals.append(Goal(title: "", description: ""))
        }
        
    }
    
    public func addSavedTip(tip: Tip){
        savedTips.append(tip)
    }
    
    public func removeSavedTip(tip: Tip){
     //   var index = savedTips.index(of: tip)
     //   savedTips.remove(at: index)
    }
    
    public func addToCompletedGoal(completedGoal : Goal){
        completedGoals.append(completedGoal)
    }
    
    
    public func addToDoGoal(toDoGoal : Goal, index: Int){
        if(index <= MAX_GOALS_TO_DO && index >= 0){
            toDoGoals.insert(toDoGoal, at: index)
        }else{
            print("Error..")
        }
    }
    
    public func removeToDoGoal(goal : Goal){
    
    }
    
    public func setName(name : String){
        self.name = name
    }
    
    public func getName() -> String {
        return self.name
    }
}
