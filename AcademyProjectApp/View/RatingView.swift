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
    @ObservedObject var completedGoalsVM : GoalCompletedVM
    @Binding var goal : Goal
    @ObservedObject var goalToDoVM : GoalToDoVM
    var index : Int
    
    @State private var selectedItem : RatingEnum = RatingEnum.Poor
    
    
    var body: some View {
        
        HStack{
            ForEach(RatingEnum.allCases, id: \.rawValue) { item in
                Button() {
                    selectedItem = item
                    showingAlert = true
                }label: {
                    Image(item.rawValue)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                }
                .alert("Do you want to save this rating? " + "(" + selectedItem.rawValue + ")", isPresented: $showingAlert) {
                    Button ("Yes", role: .destructive) {
                        goal.rating = selectedItem
                        print(goal.rating!.rawValue)
                        completedGoalsVM.addCompletedGoal(completedGoal: goal)
                        goalToDoVM.remove(toDoGoal: goal, index: index)
                        dismiss()
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
        RatingView(completedGoalsVM: GoalCompletedVM(), goal: .constant(Goal(title: "", description: "")), goalToDoVM: GoalToDoVM(), index: 1)
    }
}

