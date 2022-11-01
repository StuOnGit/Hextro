//
//  HighlitsView.swift
//  AcademyProjectApp
//
//  Created by Valentina Russo on 24/10/22.
//

import SwiftUI



struct HighlightsView: View {
    
    @State var pickerChoose: PickerEnum = PickerEnum.Day
    @Environment(\.colorScheme) var colorScheme

    
    var body: some View {
        VStack{
            HStack{
                Text("Highlights")
                    .fontWeight(.bold)
                    .font(.system(size: 28))
                
                Spacer()
            }
            .padding(.top, 10)
            Picker(selection: $pickerChoose, label: Text("Picker")) {

                Text(PickerEnum.Day.rawValue).tag(PickerEnum.Day)
                Text(PickerEnum.Week.rawValue).tag(PickerEnum.Week)
                Text(PickerEnum.Month.rawValue).tag(PickerEnum.Month)
                Text(PickerEnum.Year.rawValue).tag(PickerEnum.Year)
              //  Text("All").tag(PickerEnum.All)
            }
            .pickerStyle(.segmented)
            
           // Text(pickerChoose.rawValue)

            
            ZStack (){
                VStack (alignment: .leading, spacing: 8){
                HStack{
                        
                        Text ("Completed goals")
                        .font(.system(size: 16))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.green)
                            
                                     
                    }
                    
                    Text ("You did a great job!")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .padding(.bottom, 2)
                    Divider()
                    
                    
                    HStack(alignment: .firstTextBaseline, spacing: 4) {
                        Text("0")
                            .font(.system(size: 30, design: .rounded))
                            .fontWeight(.semibold)
                            
                        Text("goals/month")
                            .font(.system(size: 20, design: .rounded))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                    }
                    
                    
                    
                    
                }
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(colorScheme == .light ? Color(red: 0.9490196078431372, green: 0.9450980392156862, blue: 0.9647058823529412) : Color(red: 0.08627450980392157, green: 0.08627450980392157, blue: 0.09411764705882353))
                    
            
                }
                
        
               
           
                }
            
            .padding(.top, 15)
          
      
        

        
      
      
     
                
            }
        
            
        }
      
        
        
        
    }



struct HighlitsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HighlightsView()
                .preferredColorScheme(.light)
            HighlightsView()
                .preferredColorScheme(.dark)
        }
     
    }
}
