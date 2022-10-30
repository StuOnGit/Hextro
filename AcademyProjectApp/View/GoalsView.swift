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
    @State var title: String

    var body: some View {
        
        ScrollView {
            VStack(){
                HStack{
                    Text("\(title)goals")
                        .fontWeight(.bold)
                        .font(.system(size: 28))
                    Spacer()
                }
                .padding()
                
                ForEach(goalDB) {goal in
                    Button() {
                        showSheet.toggle()
                    }label: {
                        Label(goal.title, systemImage: "")
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.black)
                    }
                    .padding()
                    .fullScreenCover(isPresented: $showSheet) {
                        ModalView(rootActive: $rootActive)
                    }
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                }
                }
                .padding(4)
                
            }
        }.background(Color.gray.opacity(0.15))
     
    }
}

struct GoalsView_Previews: PreviewProvider {
    static var previews: some View {
        
        GoalsView(rootActive: .constant(false), completedGoalClicked: .constant(false), addGoalIsClicked: .constant(false), title: "")
    }
}
