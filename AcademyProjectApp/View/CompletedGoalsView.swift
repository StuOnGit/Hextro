//
//  CompletedGoalsView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 31/10/22.
//

import SwiftUI

struct CompletedGoalsView: View {
    
    @ObservedObject var completedGoalVM : GoalCompletedVM
    @Environment(\.colorScheme) var colorScheme
    
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(){
                    ForEach(completedGoalVM.completedGoals) {goal in
                        ExpandView(goal: goal)
                            .padding(.horizontal, 4)
                    }
                    .padding(4)
                  
                }
            }
        }
        .navigationTitle("Completed Goals")
    }
    }

struct ExpandView : View{
    var goal : Goal
    
    @State var isExpand = false
    @Environment(\.colorScheme) var colorScheme
    
    var body : some View {
        VStack{
            HStack{
                Text(goal.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    .foregroundColor(.black)
                    .padding(.horizontal)
                
                Image("\(goal.rating!.rawValue)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .padding(.horizontal)
            }
            if isExpand {
                Text(goal.description)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.black)
                    .padding(.horizontal)
            }
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 10)
                .frame(maxWidth: .infinity)
                .foregroundColor(colorScheme == .light ? Color(red: 0.9490196078431372, green: 0.9450980392156862, blue: 0.9647058823529412) : Color(red: 0.08627450980392157, green: 0.08627450980392157, blue: 0.09411764705882353))
                
        }

        .transition(.move(edge: .bottom))
        .onTapGesture {
            withAnimation {
                isExpand.toggle()
            }
            
        }
        .padding()
    }
}

struct CompletedGoalsView_Previews: PreviewProvider {
    static var previews: some View {
        CompletedGoalsView(completedGoalVM: GoalCompletedVM())
    }
}
