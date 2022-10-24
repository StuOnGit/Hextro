//
//  GoalsView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 24/10/22.
//

import SwiftUI

struct GoalsView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Goals")
                    .fontWeight(.bold)
                    .font(.system(size: 28))
                Spacer()
                Button{
                } label: {
                    Label(" ", systemImage: "medal")
                        .font(.system(size: 20))
                }
            }
            .padding()
            
            List{
                Text("Ciao")
                Text("Hello")
                Text("Buongiorno")
                Text("Goodmorning")
                Text("Goodnight")
            }
            .listStyle(.plain)
        }
    }
}

struct GoalsView_Previews: PreviewProvider {
    static var previews: some View {
        GoalsView()
    }
}
