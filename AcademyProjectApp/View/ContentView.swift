//
//  ContentView.swift
//  AcademyProjectApp
//
//  Created by Alexey on 20/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationView(){
            ScrollView {
                VStack {
                    TipOfTodayView()
                    Divider()
                    GoalsView()
                    Divider()
                    HighlitsView()
                    Spacer()
                }
                .padding()
                .navigationTitle("Dashboard")
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        NavigationLink(destination: ContentView()) {
                            Image(systemName: "gearshape").foregroundColor(Color.black).font(.title2)
                                .fontWeight(.bold)
                        }
                    }
                }
            }
            
            
        }
        .navigationViewStyle(.stack)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
