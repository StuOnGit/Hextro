//
//  ContentView.swift
//  AcademyProjectApp
//
//  Created by Alexey on 20/10/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("userOnboarded") var userOnboarded: Bool = false
    var body: some View {
        if userOnboarded{
            
            
            NavigationView(){
                ScrollView {
                    VStack {
                        TipOfTodayView()
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
                                    .foregroundColor(.black)
                                
                            }
                        }
                        ToolbarItem(placement: .navigationBarLeading) {
                            NavigationLink(destination: ProfileView()) {
                                Image(systemName: "person.circle")
                                    .font(.system(size: 22))
                                    .foregroundColor(.black)
                                
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
            ContentView()
        }
    }
}
