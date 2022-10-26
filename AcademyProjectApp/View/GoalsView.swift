//
//  CompletedGoalsView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 25/10/22.
//

import SwiftUI

struct CompletedGoalsView: View {
    
    
    var body: some View {
        
        VStack{
            HStack{
                Text("Goals")
                    .fontWeight(.bold)
                    .font(.system(size: 28))
                Spacer()
                
            }
            .padding()
            
            
        }

        
    }
}

struct CompletedGoalsView_Previews: PreviewProvider {
    static var previews: some View {
        CompletedGoalsView()
    }
}
