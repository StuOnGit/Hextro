//
//  GoalCard.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 25/10/22.


import SwiftUI

struct GoalCard: View {
    
    
    
    var goal : Goal
    
    var body: some View {
        
        
        //if goal == nil -> button else goal button
        
        if (goal.title == "") {
            Button() {}label: {
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
            Button() {} label: {
                Label(goal.title + "\n" + goal.description, systemImage: "")
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color.blue)
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
        GoalCard(goal: goalDB[0])
    }
}
