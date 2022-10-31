//
//  GoalCompletedVM.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 31/10/22.
//

import SwiftUI

class GoalCompletedVM : ObservableObject{
    @Published var completedGoals : [Goal] = []
    
    init(){
        completedGoals = User.instance.completedGoals
    }
    
    func addCompletedGoal(completedGoal: Goal){
        completedGoals.append(completedGoal)
    }
    
//    func addCompleted(completedGoals: Goal){
//        completedGoals.insert(completedGoals: goal, at: completedGoals.endIndex)
//    }
    
}
