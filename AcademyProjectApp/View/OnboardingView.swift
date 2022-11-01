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
    @AppStorage("userName") var userName: String = " "
    @AppStorage("userSurname") var userSurname: String = " "
    @State private var name: String = ""
    @State private var surname: String = ""
    @State var selectedItems:[PhotosPickerItem] = []
    @State var avatar: Data?
    @AppStorage("userAvatar") var userAvatar: Data?
    
    var body: some View {
        
        VStack (alignment: .center) {
            
            Text ("Welcome!")
            
                .font(.system(size: 50))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.top, 70)
            Spacer()
            
            if let data = avatar, let uiimage = UIImage(data: data) {
                Image(uiImage: uiimage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .padding(.bottom, 20)
            }
            PhotosPicker(
                selection: $selectedItems, maxSelectionCount: 1, matching: .images) {
                    Text ("Choose Profile Photo")
                    
                }
            
                .onChange(of: selectedItems) { newValue in
                    guard let item = selectedItems.first else {
                        return
                    }
                    item.loadTransferable(type: Data.self) { result in
                        switch result {
                        case .success(let data):
                            if let data = data {
                                self.avatar = data
                            } else {
                                print("Data is nil")
                            }
                        case .failure(let failure):
                            fatalError("Error \(failure)")
                        }
                    }
                }
            HStack {
                Text("Name")
                    .padding(.top, 30)
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
            Button(action: {
                userOnboarded = true
                userName = name
                userSurname = surname
                userAvatar = avatar
                
            })
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
