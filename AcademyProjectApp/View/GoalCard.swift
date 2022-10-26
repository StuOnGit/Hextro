//
//  GoalCard.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 25/10/22.
//

import SwiftUI

struct GoalCard: View {
    var body: some View {
        Button() {}label: {
            Label("Add new Goal", systemImage: "plus")
                .frame(maxWidth: .infinity)
            
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 10)
            .frame(maxWidth: .infinity)
            .foregroundColor(.blue.opacity(0.15))
        }
        
    }
}

struct GoalCard_Previews: PreviewProvider {
    static var previews: some View {
        GoalCard()
    }
}
