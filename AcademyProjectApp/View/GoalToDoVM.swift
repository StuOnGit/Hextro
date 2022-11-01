//
//  GoalToDoVM.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 27/10/22.
//

import SwiftUI

class GoalToDoVM : ObservableObject{
    @Published var toDoGoals : [Goal] = []
    
    init(){
        toDoGoals = User.instance.toDoGoals
        
    }
    
    func insert(toDoGoal: Goal, index: Int){
        toDoGoals[index] = toDoGoal
    }
    
    func remove(toDoGoal: Goal, index: Int){
        toDoGoals[index] = Goal(title: "", description: "")
    }
}

