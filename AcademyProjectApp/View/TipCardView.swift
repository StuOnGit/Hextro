//
//  TipCardView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 24/10/22.
//

import SwiftUI

struct TipCardView: View {
    
    var tip : Tip
    
    
    var body: some View {
       ZStack{
            VStack(alignment: .leading, spacing: 10){
                
                HStack(alignment: .top){
                    Text(tip.title)
                        .foregroundColor(.white)
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Image(systemName: tip.icon)
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                }
                
                Text(tip.description)
                    .foregroundColor(.white)
        
            }
            .padding(20)
       }.background {
           RoundedRectangle(cornerRadius: 8)
               .foregroundColor(.blue)
       }
    }
}

struct TipCardView_Previews: PreviewProvider {
    static var previews: some View {
        TipCardView(tip: tipsDB[0])
    }
}
