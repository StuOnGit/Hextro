//
//  TipOfTodayView.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 25/10/22.
//

import SwiftUI

struct TipOfTodayView: View {
    
    @State private var savedTipsIsClicked = false
    
    var body: some View {
        
        
        VStack(spacing: 6){
            TipCardView(tip: tipExample1)
            
            
            NavigationLink(destination: SavedTipsView(), isActive: $savedTipsIsClicked) { EmptyView() }
            
            Button() {
                savedTipsIsClicked = true
            }label: {
                Label("Saved Tips", systemImage: "heart.fill")
            }
            
            .padding(20)
            .background {
                RoundedRectangle(cornerRadius: 8)
                    .frame(height: 50)
                    .foregroundColor(.blue.opacity(0.15))
            }
            .padding(.bottom, 10)
            
        }
        
    }
}

struct TipOfTodayView_Previews: PreviewProvider {
    static var previews: some View {
        TipOfTodayView()
    }
}
