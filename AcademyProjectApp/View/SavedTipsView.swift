//
//  SavedTipsView.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 25/10/22.
//

import SwiftUI

struct SavedTipsView: View {
    
    
    @ObservedObject var tipSavedCardVM = TipCardModel()
    
    @State var searchText = ""
    
    var body: some View {
        
        VStack(spacing: 0){
            
            
                
            ForEach(User.instance.savedTips){ tip in
                    TipCardView(tip: tip)
                }
           
       
            .searchable(text: $searchText)
            
            .navigationTitle("Saved tips")
            
            Spacer()
            
        }
        
        
    }
}

struct SavedTipsView_Previews: PreviewProvider {
    static var previews: some View {
        SavedTipsView()
    }
}
