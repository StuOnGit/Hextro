//
//  CompletedGoalsView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 31/10/22.
//

import SwiftUI

struct CompletedGoalsView: View {
    
    @ObservedObject var completedGoalsVM : GoalCompletedVM
    
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
                
   // ----- test preview
                Button() {
                }label: {
                    Text("This is a test test test test with other test text")
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.black)
                        .padding(.horizontal)

                    Image("bad")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                        .padding(.horizontal)
                }
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
    // ------ end test preview
                
                ForEach(completedGoalsVM.completedGoals) {goal in
                    Button() {
                    }label: {
                        Text(goal.title)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.black)
                            .padding(.horizontal)
//                        Label(goal.title, systemImage: "")
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                            .foregroundColor(.black)
                        Image("\(goal.rating.rawValue)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30)
                            .padding(.horizontal)
                    }
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                    }
                }
                .padding(4)
            }
        }.background(Color.gray.opacity(0.10))
    }
    }

struct CompletedGoalsView_Previews: PreviewProvider {
    static var previews: some View {
        CompletedGoalsView(completedGoalsVM: GoalCompletedVM())
    }
}
