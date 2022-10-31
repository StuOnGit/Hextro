//
//  GoalCard.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 25/10/22.


import SwiftUI

struct GoalCard: View {
    
    @State private var mainActive = false
    @State var addGoalIsClicked = false
    @State private var completedGoalClicked = false
    @State var editClicked = false
    @State private var showSheet = false
    
    var goal : Goal
    var index: Int
    @ObservedObject var goalToDoVM : GoalToDoVM
    
    
    var body: some View {
        
        VStack{
            NavigationLink(destination: GoalsView(rootActive: $mainActive, completedGoalClicked: $completedGoalClicked, addGoalIsClicked: $addGoalIsClicked, goalToDoVM: goalToDoVM, indexButtonTochange: index), isActive: $mainActive) {EmptyView()}
            
            
            
            if (goal.title == "") {
                Button() {
                    mainActive = true
                    addGoalIsClicked = true
                }label: {
                    Label("Add new Goal", systemImage: "plus")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                    
                }
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.gray.opacity(0.15))
                }
            }else{
                Button() {
                    editClicked = true
                    showSheet.toggle()
                } label: {
                    Label(goal.title, systemImage: "")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color.blue)
                }
                .fullScreenCover(isPresented: $showSheet) {
                    ModalEditView(goal: goal, goalToDoVM : goalToDoVM, index: index)
                }
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.gray.opacity(0.15))
                }
            }
            
        }
    }
}

struct GoalCard_Previews: PreviewProvider {
    static var previews: some View {
        GoalCard(goal: goalDB[0], index: 1, goalToDoVM: GoalToDoVM())
    }
}
