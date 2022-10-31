//
//  SavedTipsView.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 25/10/22.
//

import SwiftUI

struct SavedTipsView: View {
    
    
    @ObservedObject var tipCardModel : TipCardModel
    
    @State var searchText = ""
    
    var body: some View {
        
        VStack(spacing: 0){
            
            
                
            ForEach(tipCardModel.savedTips){ tip in
                    TipCardView(tip: tip, tipCardModel: tipCardModel)
                }
           
       
            .searchable(text: $searchText)
            
            .navigationTitle("Saved tips")
            
            Spacer()
            
        }
        
        
    }
}

struct SavedTipsView_Previews: PreviewProvider {
    static var previews: some View {
        SavedTipsView(tipCardModel: TipCardModel())
    }
}
