//
//  TipCardView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 24/10/22.
//

import SwiftUI

struct TipCardView: View {
    
    var tip : Tip
   // @State private var isClicked : Bool = false
    @ObservedObject var tipCardModel : TipCardModel
    
    
    var body: some View {
        
        ZStack{
            VStack(alignment: .leading, spacing: 15){
                
                HStack(alignment: .firstTextBaseline){
                    Text(tip.title)
                        .foregroundColor(.white)
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    
                    
                    Button(action: {
                        if(tipCardModel.savedTips.contains(where: {tip == $0})){
                            tipCardModel.remove(savedTip: tip)
                        }else{
                            tipCardModel.insert(savedTip: tip)
                        }
                    }) {
                            
                        Image(systemName:  tipCardModel.savedTips.contains(where: {tip == $0}) ? "heart.fill"
                            : "heart")
                    }
                    .foregroundColor(Color.white)
                    .font(.system(size: 28))
                    
                   
                    
                    .alignmentGuide(.firstTextBaseline) { context in
                        context[.bottom] - 0.2 * context.height
                    }
                    
                }
                
                Text(tip.description)
                    .foregroundColor(.white)
                
            }
            .padding(20)
        }
        .background {
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.blue)
        }
    }
}

struct TipCardView_Previews: PreviewProvider {
    static var previews: some View {
        TipCardView(tip: tipsDB[0], tipCardModel: TipCardModel())
    }
}
