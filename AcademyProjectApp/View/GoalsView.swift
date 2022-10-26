//
//  CompletedGoalsView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 25/10/22.
//

import SwiftUI

struct CompletedGoalsView: View {
    
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Goals")
                    .fontWeight(.bold)
                    .font(.system(size: 28))
                Spacer()
                
            }
            .padding(.top, 5)
            ForEach(Goals) {goal in
                GoalCard()
            }
          
        }
        .padding(.bottom, 10)
    }
}

struct CompletedGoalsView_Previews: PreviewProvider {
    static var previews: some View {
        CompletedGoalsView()
    }
}
