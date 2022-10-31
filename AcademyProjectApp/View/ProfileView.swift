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

    var body: some View {
        NavigationView() {
            ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(LinearGradient(colors: [Color.green], startPoint: .top, endPoint: .bottom))
                            .frame(width: .infinity, height: 245)
                            .shadow(radius: 4)
                
                        VStack{
                            Image("franco-image")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 120, height: 180)
                                .shadow(radius: 5)
                                .cornerRadius(20)
                            
                            Text(userName)
                                .fixedSize()
                                .font(.title3.weight(.bold))
                                .foregroundColor(.black)
                            Text(userSurname)
                                .font(.subheadline)
                                .foregroundColor(.black)
                                .lineLimit(2)
                        }
                    }
                VStack(){
                    HStack (alignment: .center){
                        VStack (alignment: .leading){
                            Text("\(userName) \(userSurname)")
                                .padding(.top, 5)
                                .font(.system(size: 30))
                                .padding(.bottom, 5)
                            
                        }
                        
                        Spacer()
                        Image("franco-image")
                            .resizable()
                            .frame(width: 100, height: 100)
                        
                        
                    }
                    
                    .padding()
                    Divider()
                    Spacer()
                    
                }
            }
        .navigationTitle("Profile")
        }
     
    }


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
