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
    
//    @ObservedObject
    @ObservedObject var goalsToDoVM = GoalToDoVM()
    
    var body: some View {
        VStack{
            HStack{
                Text("Goals")
                    .fontWeight(.bold)
                    .font(.system(size: 28))
                Spacer()
                Button{
                } label: {
                    Label(" ", systemImage: "medal")
                        .font(.system(size: 20))
                }
            }
            .padding(.top, 5)
            

            ForEach(goalsToDoVM.toDoGoals) { goal in
                GoalCard(goal: goal)
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
