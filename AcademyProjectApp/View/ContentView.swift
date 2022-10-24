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
            VStack {
                TipsView()
                Divider()
                GoalsView()
                Text("TEST")
            }
            .padding()
            .navigationTitle("Dashboard")
            .toolbar {
                                ToolbarItemGroup(placement: .navigationBarTrailing) {
                                    NavigationLink(destination: ContentView()) {
                                        Image(systemName: "gearshape").font(.title)
                                    }
                                }
                            }
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
