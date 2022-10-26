//
//  HighlitsView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 24/10/22.
//

import SwiftUI



struct HighlitsView: View {
    
    @State var pickerChoose: Int = 1
    
    var body: some View {
        VStack{
            HStack{
                Text("Highlights")
                    .fontWeight(.bold)
                    .font(.system(size: 28))
                
                Spacer()
            }
            Picker(selection: $pickerChoose, label: Text("Picker")) {
                Text("Day").tag(1)
                Text("Week").tag(2)
                Text("Month").tag(3)
                Text("Year").tag(4)
                //  Text("All").tag(4)
            }
            .pickerStyle(.segmented)
            
            Text(String(pickerChoose))
                
            
        }
        .padding(.top, 5)
        
        
        
    }
}

struct HighlitsView_Previews: PreviewProvider {
    static var previews: some View {
        HighlitsView()
    }
}
