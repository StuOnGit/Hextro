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
    
    var body: some View {
        VStack{
            HStack{
                Text("Goals")
                    .fontWeight(.bold)
                    .font(.system(size: 28))
                Spacer()
                
                NavigationLink(destination: GoalsView(rootActive: $mainActive, completedGoalClicked: $completedGoalClicked, addGoalIsClicked: $addGoalIsClicked), isActive: $mainActive) { EmptyView() }
                Button{
                    mainActive = true
                    completedGoalClicked = true
                } label: {
                    Label(" ", systemImage: "medal")
                        .font(.system(size: 20))
                }
            }
            .padding(.top, 5)
            ForEach(Goals) {goal in
                GoalCard()
                    .padding(.vertical, 1)
            }
        }
        .padding(.bottom, 10)
    }
}

struct GoalsDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        GoalsDashboardView()
    }
}
