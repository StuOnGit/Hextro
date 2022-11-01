//
//  ProfileView.swift
//  AcademyProjectApp
//
//  Created by Alexey on 26/10/22.
//

import SwiftUI

struct ProfileView: View {
    @AppStorage("userName") var userName: String = " "
    @AppStorage("userSurname") var userSurname: String = " "
    @AppStorage("userAvatar") var userAvatar: Data?
    @Environment(\.colorScheme) var colorScheme

   
    
    var body: some View {
        NavigationView() {
            ZStack {
                
                
                VStack (alignment: .center, spacing: 0){
                    if let data = userAvatar, let uiimage = UIImage(data: data) {
                        Image(uiImage: uiimage)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                            .padding(.top, 40)
                    }
                    HStack(){
                        Text("\(userName) \(userSurname)")
                        
                            .fixedSize()
                            .font(.system(size: 40).bold())
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                            .padding(.top, 30)
                        
                        
                            .padding(.bottom, 150)
                    }
                }
                
            }
           
            
        }
        .navigationTitle("Profile")
    }
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
        
        }
    }
}
