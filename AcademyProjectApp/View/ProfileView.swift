//
//  ProfileView.swift
//  AcademyProjectApp
//
//  Created by Alexey on 26/10/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView() {
            VStack(){
                HStack (alignment: .top){
                    VStack (alignment: .leading){
                        Text("Franco Tonelli")
                            .padding(.top, 5)
                            .font(.system(size: 35))
                            .padding(.bottom, 5)
                        Text("22 years old, Naples")
                            .font(.system(size: 20))
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
