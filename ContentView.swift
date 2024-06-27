//
//  ContentView.swift
//  Menu App
//
//  Created by Hong Huang on 6/26/24.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.red.edgesIgnoringSafeArea(.all)
                ScrollView {
                    Text("Example")
                }
                .navigationBarTitle("title")
            }
        }
    }
}

#Preview {
    ContentView()
}
