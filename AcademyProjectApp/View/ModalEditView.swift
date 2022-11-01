//
//  ModalEditView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 31/10/22.
//

import SwiftUI

struct ModalEditView: View {
    
    @ObservedObject var completedGoalVM : GoalCompletedVM
    @State private var cancelClicked = false
    @Environment(\.dismiss) var dismiss
    
    @Binding var goal : Goal
    @ObservedObject var goalToDoVM : GoalToDoVM
    var index : Int
    
    var body: some View {
        
        ZStack{
            VStack(alignment: .leading){
                HStack{
                    Button {
                        cancelClicked = true
                        dismiss()
                    } label: {
                        Text("Cancel")
                    }
                    
                    Spacer()
                    
                }
                
                Text(goal.title)
                    .fontWeight(.bold)
                    .font(.system(size: 28))
                 
                    .padding(10)
                
                Text(goal.description)
                    .padding(10)
                Spacer()
                Divider()
                Text("How do you feel after completing this goal?")
                    .font(.headline)
                    .foregroundColor(.blue)
                

                RatingView(completedGoalVM: completedGoalVM, goal: $goal, goalToDoVM : goalToDoVM, index: index)
              
                
            }
            .padding()
            
        }
    }
}

struct ModalEditView_Previews: PreviewProvider {
    static var previews: some View {
        ModalEditView(completedGoalVM: GoalCompletedVM(), goal: .constant(goalDB[0]), goalToDoVM: GoalToDoVM(), index: 1)
    }
}
