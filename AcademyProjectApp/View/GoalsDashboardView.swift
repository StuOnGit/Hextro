//
//  GoalsDashboardView.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 26/10/22.
//

import SwiftUI

var Goals: [Goal] = [
    Goal(title: "title", description: "description"),
    Goal(title: "title2", description: "description2"),
    Goal(title: "title", description: "description"),
    Goal(title: "title2", description: "description2"),
    Goal(title: "title", description: "description")
]

struct GoalsDashboardView: View {
    @State private var mainActive = false
    @State private var completedGoalClicked = false
    @State var addGoalIsClicked = false
    @State var title: String = ""
    
    @StateObject var goalsToDoVM = GoalToDoVM()

    var index : Int = 0
    
    var body: some View {
        VStack{
            HStack{
                Text("Goals")
                    .fontWeight(.bold)
                    .font(.system(size: 28))
                Spacer()
                
//                NavigationLink(destination: GoalsView(rootActive: $mainActive, completedGoalClicked: $completedGoalClicked, addGoalIsClicked: $addGoalIsClicked, title: title, indexButtonTochange: index), isActive: $mainActive) { EmptyView() }
                Button{
                    mainActive = true
                    completedGoalClicked = true
                    title = "Completed "
                } label: {
                    Label(" ", systemImage: "medal")
                        .font(.system(size: 20))
                }
            }
            .padding(.top, 5)

            ForEach(0..<goalsToDoVM.toDoGoals.count, id: \.self) {index in
                GoalCard(goal: goalsToDoVM.toDoGoals[index], index: index, goalsToDoVM : goalsToDoVM)
                    .padding(.vertical, 1)
            }
            
            Text(String(goalsToDoVM.toDoGoals.count))
        }
        .padding(.bottom, 10)
    }
}

struct GoalsDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        GoalsDashboardView()
    }
}
