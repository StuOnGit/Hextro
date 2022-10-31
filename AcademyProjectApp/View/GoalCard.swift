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
    @Environment(\.colorScheme) var colorScheme

    
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
                        .foregroundColor(colorScheme == .light ? Color(red: 0.9490196078431372, green: 0.9450980392156862, blue: 0.9647058823529412) : Color(red: 0.08627450980392157, green: 0.08627450980392157, blue: 0.09411764705882353))
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
                        .foregroundColor(Color(red: 0.9490196078431372, green: 0.9450980392156862, blue: 0.9647058823529412))
                }
            }
            
        }
    }
}

struct GoalCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GoalCard(goal: goalDB[0], index: 1, goalToDoVM: GoalToDoVM())
                .preferredColorScheme(.light)
            GoalCard(goal: goalDB[0], index: 1, goalToDoVM: GoalToDoVM())
                .preferredColorScheme(.dark)
        }
      
    }
}
