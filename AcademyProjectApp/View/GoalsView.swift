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
    @State private var selectedGoal : Goal = Goal(title: "", description: "")
    @Environment(\.colorScheme) var colorScheme
    
    var indexButtonTochange: Int
    
    var body: some View {
        

        NavigationView {
            ScrollView {
                       
                  
                VStack (){
                        ForEach(goalDB) {goal in
                            HStack () {
                              
                            Button() {
                                selectedGoal = goal
                                showSheet = true
                            }label: {
                                HStack (spacing: 0) {
                                    Text(goal.title)
                                        .frame(maxWidth: .infinity)
                                
                                    Label(goal.title, systemImage: " ")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                        .foregroundColor(colorScheme == .light ? .black : .white)
                                  
                                }
                                
                                
                            }
                                
                           
                            .fullScreenCover(isPresented: $showSheet) {
                                ModalView(rootActive: $rootActive, goal: $selectedGoal, index: indexButtonTochange, goalToDoVM: goalToDoVM)
                            }
                            .padding([.top, .bottom], 15)
                            .padding(.trailing, 10)
                            .padding(.leading, 10)
                            
                            .background {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(maxWidth: .infinity)
                                    .foregroundColor(colorScheme == .light ? Color(red: 0.9490196078431372, green: 0.9450980392156862, blue: 0.9647058823529412) : Color(red: 0.08627450980392157, green: 0.08627450980392157, blue: 0.09411764705882353))
                                
                            }
                        }
                        
                        .padding(3)
                    }
                
                .padding()
            }
        }
        .navigationTitle("Add goals")
       
        
       

     
              
            }
     
       
            
        }
      

struct GoalsView_Previews: PreviewProvider {
    static var previews: some View {

            GoalsView(rootActive: .constant(false), completedGoalClicked: .constant(false), addGoalIsClicked: .constant(false),
                       goalToDoVM: GoalToDoVM() ,indexButtonTochange: 1)

        
     
    }
    
}

