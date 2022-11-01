//
//  ModalEditView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 31/10/22.
//

import SwiftUI

struct ModalEditView: View {
    
    @StateObject var completedGoalsVM = GoalCompletedVM()
    @State private var cancelClicked = false
    @Environment(\.dismiss) var dismiss
    
    @Binding var goal : Goal
    @ObservedObject var goalToDoVM : GoalToDoVM
    var index : Int
    
    var body: some View {
        
        ZStack{
            VStack(spacing: 30){
                HStack{
                    Button {
                        cancelClicked = true
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "")
                    }
                    
                    
                    Spacer()
                    
//                    Button {
//                        dismiss()
//                        completedGoals.append(completedGoals: goal)
//                    }label: {
//                        Label("Save", systemImage: "")
//                    }
                }
                
                Text(goal.title)
                    .fontWeight(.bold)
                    .font(.system(size: 28))
                    .padding(.top, 30)
                
                Text(goal.description)
                Spacer()
                
                Text("How do you feel after completing this goal?")
                    .font(.headline)
                
                RatingView(completedGoalsVM: completedGoalsVM, goal: $goal, goalToDoVM : goalToDoVM, index: index).padding(.bottom, 40)
                
            }
            .padding()
            
        }
    }
}

struct ModalEditView_Previews: PreviewProvider {
    static var previews: some View {
        ModalEditView(completedGoalsVM: GoalCompletedVM(), goal: .constant(goalDB[0]), goalToDoVM: GoalToDoVM(), index: 1)
    }
}
