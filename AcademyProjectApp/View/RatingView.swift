//
//  RatingView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 30/10/22.
//

import SwiftUI

struct RatingView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var showingAlert = false
    @ObservedObject var completedGoalVM : GoalCompletedVM
    @State var goal : Goal
    @ObservedObject var goalToDoVM : GoalToDoVM
    var index : Int
    
    var body: some View {
        
        HStack{
            ForEach(RatingEnum.allCases, id: \.rawValue) { item in
                Button() {
                    showingAlert = true
                }label: {
                    Image(item.rawValue)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                }
                .alert("Do you want to save this rating?", isPresented: $showingAlert) {
                    Button ("Yes", role: .destructive) {
                        goal.rating = item
                        completedGoalVM.addCompletedGoal(completedGoal: goal)
                        goalToDoVM.remove(toDoGoal: goal, index: index)
                    }
                    
                }
                .frame(maxWidth: .infinity)

            }
        }
        .padding()

        
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(completedGoalVM: GoalCompletedVM(), goal: goalDB[0], goalToDoVM: GoalToDoVM(), index: 1)
    }
}

