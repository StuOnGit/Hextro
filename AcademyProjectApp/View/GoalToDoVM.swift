//
//  GoalToDoVM.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 27/10/22.
//

import SwiftUI



class GoalToDoVM : ObservableObject{
    @Published var toDoGoals = User.instance.toDoGoals
}

