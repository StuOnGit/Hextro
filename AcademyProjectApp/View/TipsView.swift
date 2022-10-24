//
//  TipsView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 24/10/22.
//

import SwiftUI

struct TipsView: View {
    var body: some View {
        
        VStack{
            TipCardView()
            Button() {}label: {
                Label("Saved Tips", systemImage: "heart.fill")
            }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 8)
                .frame(height: 50)
                .foregroundColor(.blue.opacity(0.15))
            }
        }
            
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
