//
//  ContentView.swift
//  AcademyProjectApp
//
//  Created by Alexey on 20/10/22.
//

import SwiftUI

struct ContentView: View {

    @AppStorage("userOnboarded") var userOnboarded: Bool = false
    //@AppStorage("systemMode") var systemMode
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {

        if userOnboarded{
            
            
            NavigationView(){
                ScrollView {
                    VStack {
                        TipOfTodayView()
                        Divider()
                        GoalsDashboardView()
                        Divider()
                        HighlitsView()
                        Spacer()
                    }
                    .padding()
                    .navigationTitle("Dashboard")
                    .toolbar {
                        
                        ToolbarItem(placement: .navigationBarTrailing) {
                            NavigationLink(destination: SettingsView()) {
                                Image(systemName: "gearshape")
                                    .font(.system(size: 20))
                                    .foregroundColor(colorScheme == .dark ? .white : .black)
                                
                            }
                        }
                        ToolbarItem(placement: .navigationBarLeading) {
                            NavigationLink(destination: ProfileView()) {
                                Image(systemName: "person.circle")
                                    .font(.system(size: 22))
                                    .foregroundColor(colorScheme == .dark ? .white : .black)
                                
                            }
                        }
                    }
                }
                
                
            }
            
            .navigationViewStyle(.stack)
            .navigationBarTitleDisplayMode(.inline)
            
        } else {
            OnboardingView()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Group{
                ContentView()
                    .preferredColorScheme(.light)
                ContentView()
                    .preferredColorScheme(.dark)
               
            }
            
        }
    }
}
