//
//  GoalsView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 24/10/22.
//

import SwiftUI

var Goals: [Goal] = [
    Goal(title: "title", description: "description"),
    Goal(title: "title2", description: "description2"),
    Goal(title: "title", description: "description"),
    Goal(title: "title2", description: "description2"),
    Goal(title: "title", description: "description")
]

struct GoalsView: View {
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
            .padding()
            ForEach(Goals) {goal in
                GoalCard()
            }
        }
    }
}

struct GoalsView_Previews: PreviewProvider {
    static var previews: some View {
        GoalsView()
    }
}
