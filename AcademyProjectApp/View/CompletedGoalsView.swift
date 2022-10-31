//
//  CompletedGoalsView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 31/10/22.
//

import SwiftUI

struct CompletedGoalsView: View {
    
    @StateObject var completedGoalsVM = GoalCompletedVM()
    
    var body: some View {
        
        ScrollView {
            VStack(){
                HStack{
                    Text("Completed goals")
                        .fontWeight(.bold)
                        .font(.system(size: 28))
                    Spacer()
                }
                .padding()
                
                //ForEach(completedGoals) {goal in
                    Button() {
                    }label: {
                        //Label(goal.title, systemImage: "")
                        Label("This is a test", systemImage: "")
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.black)
                    }
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                    }
                //}
                //.padding(4)
            }
        }.background(Color.gray.opacity(0.15))
    }
    }

struct CompletedGoalsView_Previews: PreviewProvider {
    static var previews: some View {
        CompletedGoalsView()
    }
}
