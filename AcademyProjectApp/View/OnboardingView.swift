//
//  OnboardingView.swift
//  AcademyProjectApp
//
//  Created by Alexey on 26/10/22.
//

import SwiftUI
import PhotosUI

struct OnboardingView: View {
    
    @AppStorage("userOnboarded") var userOnboarded: Bool = false
    @State private var name: String = ""
    @State private var surname: String = ""
    @State var selectedItems:[PhotosPickerItem] = []
    @State var data: Data?
    var user1 = User.instance

    var body: some View {
      
        VStack (alignment: .center) {
            
                Text ("Welcome!")
               
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top, 60)
            Spacer()
            if let data = data, let uiimage = UIImage(data: data) {
                Image(uiImage: uiimage)
                    .resizable()
            }
            PhotosPicker(
                selection: $selectedItems, maxSelectionCount: 1, matching: .images) {
                    Image(systemName: "photo")
                        .font(.title.bold())
                        .frame(width: 150, height: 150)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .clipShape(Circle())
                    
                }
            HStack {
                Text("Name")
                    .padding(.top, 50)
                    .padding(.leading, 20)
                    .font(.system(.title2).bold())
                Spacer()
                    

            }
                
                TextField("Enter your name", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding(.trailing, 20)
                .padding(.leading, 20)
           
                  
            HStack {
                Text("Surname")
                    .padding(.leading, 20)
                    .font(.system(.title2).bold())
                Spacer()
                    

            }
            TextField("Enter your surname", text: $surname)
                .textFieldStyle(.roundedBorder)
                .padding(.trailing, 20)
                .padding(.leading, 20)
                Button(action: {userOnboarded = true})
                {
                    
                    Text ("Continue")
                        .foregroundColor(.white)
                        .font(.body.bold())

                        
                        .background {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 350, height: 50)
                                .foregroundColor(.blue)
                        }
                        .padding(.top, 80)
                        .padding(.bottom, 70)
                }
            
                
            
                
            
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
