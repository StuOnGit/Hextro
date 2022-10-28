//
//  ModalView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 26/10/22.
//

import SwiftUI

struct ModalView: View {
    
    //@Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) var dismiss
    @State private var cancelClicked = false
    @State private var showingAlert = false
    //@State private var alertClicked = false
    
    @Binding var rootActive: Bool
    
    
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
                            }
                            
                        }
                    }
                    
                    Text("title")
                        .fontWeight(.bold)
                        .font(.system(size: 28))
                        .padding(.top, 30)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                    
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
        ModalView(rootActive: .constant(false))
    }
}