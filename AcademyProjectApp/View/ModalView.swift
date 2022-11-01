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
    //@State private var alertClicked = false
    
    @Binding var rootActive: Bool
    
    @Binding var goal : Goal
    var index : Int
    
    @ObservedObject var goalToDoVM : GoalToDoVM
    
    var body: some View {
        
            ZStack {
                
                VStack(spacing: 30){
                    HStack{
                        Button {
                            cancelClicked = true
                            dismiss()
                        } label: {
                            Label("Cancel", systemImage: "")
                        }
                        
                        
                        Spacer()
                        
                        Button {
                            
                            showingAlert = true
                        }label: {
                            Label("Add", systemImage: "")
                        }
                        .alert("Are you sure you want to add this goal?", isPresented: $showingAlert) {
                            
                            Button ("Add", role: .destructive) {
                                rootActive = false
                                goalToDoVM.insert(toDoGoal: goal, index: index)
                                goalDB.removeAll(where: {goal == $0})
                            }
                            
                        }
                    }
                    
                    Text(goal.title)
                        .fontWeight(.bold)
                        .font(.system(size: 28))
                        .padding(.top, 30)
                    
                    Text(goal.description)
                    
                    Spacer()
                }
                .padding()
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding()
        
        
        
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(rootActive: .constant(false), goal: .constant(Goal(title: "", description: "")), index: 1, goalToDoVM: GoalToDoVM())
    }
}

