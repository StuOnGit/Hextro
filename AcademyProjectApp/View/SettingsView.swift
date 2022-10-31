//
//  SettingsView.swift
//  AcademyProjectApp
//
//  Created by Alexey on 25/10/22.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        
        NavigationView {
            List{
                VStack (spacing: 0) {
                    Toggle("Dark Mode", isOn: $isDarkMode)
                        .listStyle(.inset)
                    
                }
                .preferredColorScheme(isDarkMode ? .dark : .light)

            }
            
          

          
    
        }
        .navigationTitle("Settings")

       
      
   
               
        
        
    }
    
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
