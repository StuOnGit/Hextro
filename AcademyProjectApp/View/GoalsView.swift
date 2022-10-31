//
//  GoalsView.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 26/10/22.
//

import SwiftUI


struct GoalsView: View {
    
    @Binding var rootActive: Bool
    @State private var showSheet = false
    @Binding var completedGoalClicked: Bool
    @Binding var addGoalIsClicked: Bool
    
    @ObservedObject var goalToDoVM : GoalToDoVM
    @Environment(\.colorScheme) var colorScheme
    
    var indexButtonTochange: Int
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(){
                  
                    
                    ForEach(goalDB) {goal in
                        Button() {
                            showSheet.toggle()
                        }label: {
                            Label(goal.title, systemImage: "")
                                .frame(maxWidth: .infinity)
                                .foregroundColor(colorScheme == .light ? .black : .white)
                        }
                    
                        
                        .fullScreenCover(isPresented: $showSheet) {
                            ModalView(rootActive: $rootActive, goal: goal, index: indexButtonTochange, goalToDoVM: goalToDoVM)
                               
                        }
                        
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(colorScheme == .light ? .white : Color(red: 0.08627450980392157, green: 0.08627450980392157, blue: 0.09411764705882353))
                        }
                       
                     
                    }
                  
                }
                .padding()
              
            }.background(colorScheme == .light ? Color.gray.opacity(0.15) : .black)
            
            
        }
        .navigationTitle("Add goals")
    }
}

struct GoalsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GoalsView(rootActive: .constant(false), completedGoalClicked: .constant(false), addGoalIsClicked: .constant(false),
                goalToDoVM: GoalToDoVM() ,indexButtonTochange: 1)
            .preferredColorScheme(.light)
            GoalsView(rootActive: .constant(false), completedGoalClicked: .constant(false), addGoalIsClicked: .constant(false),
                goalToDoVM: GoalToDoVM() ,indexButtonTochange: 1)
            .preferredColorScheme(.dark)
        }
     
    }
    
}
