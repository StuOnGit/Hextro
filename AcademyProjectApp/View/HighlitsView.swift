//
//  HighlitsView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 24/10/22.
//

import SwiftUI



struct HighlitsView: View {
    
    @State var pickerChoose: PickerEnum = PickerEnum.Day
    
    var body: some View {
        VStack{
            HStack{
                Text("Highlights")
                    .fontWeight(.bold)
                    .font(.system(size: 28))
                
                Spacer()
            }
            Picker(selection: $pickerChoose, label: Text("Picker")) {

                Text(PickerEnum.Day.rawValue).tag(PickerEnum.Day)
                Text(PickerEnum.Week.rawValue).tag(PickerEnum.Week)
                Text(PickerEnum.Month.rawValue).tag(PickerEnum.Month)
                Text(PickerEnum.Year.rawValue).tag(PickerEnum.Year)
              //  Text("All").tag(PickerEnum.All)
            }
            .pickerStyle(.segmented)
            
            Text(pickerChoose.rawValue)

            
        }
        .padding(.top, 5)
        
        
        
    }
}

struct HighlitsView_Previews: PreviewProvider {
    static var previews: some View {
        HighlitsView()
    }
}
