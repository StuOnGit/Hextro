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
    @State var title: String = ""
     
    var body: some View {
         
        VStack{
            NavigationLink(destination: GoalsView(rootActive: $mainActive, completedGoalClicked: $completedGoalClicked, addGoalIsClicked: $addGoalIsClicked, title: title), isActive: $mainActive) {EmptyView()}
            Button() {
                mainActive = true
                addGoalIsClicked = true
                title = "Add "
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
        }
                
        
    }
}

struct GoalCard_Previews: PreviewProvider {
    static var previews: some View {
        GoalCard()
    }
}
