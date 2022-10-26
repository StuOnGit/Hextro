//
//  SavedTipsView.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 25/10/22.
//

import SwiftUI

struct SavedTipsView: View {
    
   
    @ObservedObject var tipCardVM = TipCardModel()
    
    @State var searchText = ""
    
    var body: some View {
        
        VStack(spacing: 0){
           
              
                    List{
                        ForEach(tipCardVM.tips){ tip in
                            TipCardView(tip: tip)
                                .listRowSeparator(.hidden)
                        }
                    }
                    .listStyle(.plain)
                    .searchable(text: $searchText)
                   
                    .navigationTitle("Saved tips")
                
          
        }
            
        
            
        
        
       
    }
}

struct SavedTipsView_Previews: PreviewProvider {
    static var previews: some View {
        SavedTipsView()
    }
}
