//
//  ModalView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 30/10/22.
//

import SwiftUI

struct ModalView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var cancelClicked = false
    @State private var showingAlert = false
    
    @Binding var rootActive: Bool
    @Environment(\.colorScheme) var colorScheme

    
    @Binding var goal : Goal
    var index : Int
    
    @ObservedObject var goalToDoVM : GoalToDoVM
    
    var body: some View {
     
            ZStack {
                
                VStack(alignment: .leading){
                    
                    HStack{
                        Button {
                            cancelClicked = true
                            dismiss()
                        } label: {
                            Text("Cancel")
                        }
                        
                        
                        Spacer()
                        
                        Button {
                            
                            showingAlert = true
                        }label: {
                            Text("Add")
                        }
                        .alert("Are you sure you want to add this goal?", isPresented: $showingAlert) {
                            Button ("Add") {
                                dismiss()
                                rootActive = false
                                goalDB.removeAll(where: {goal == $0})
                                goalToDoVM.insert(toDoGoal: goal, index: index)
                            }
                            Button ("Cancel", role: .cancel) {
                                dismiss()
                            }
                            
                        }
                    }
                    
                    
                    Text(goal.title)
                        .fontWeight(.bold)
                        .font(.system(size: 28))
                        .padding(10)
                        .foregroundColor(colorScheme == .light ? .black : .white)
                   
                    
                    Text(goal.description)
              
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                        .foregroundColor(colorScheme == .light ? .black : .white)
                    
                    Spacer()
                }
           
                
            }
    
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
           
            .padding()
            .background(colorScheme == .light ? .white : .black)
        
   
    }
    
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(rootActive: .constant(false), goal: .constant(Goal(title: "", description: "")), index: 1, goalToDoVM: GoalToDoVM())
        
//            ModalView(rootActive: .constant(false), goal: goalDB[0], index: 1, goalToDoVM: GoalToDoVM())
           
      
        }
      
    }


