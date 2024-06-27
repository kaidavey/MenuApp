//
//  HomeView.swift
//  Menu App
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            MenuView()
                .tabItem {
                    Image(systemName: "menucard.fill")
                    Text("Menu")
                }
            CartView()
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Cart")
                }
        }
        .accentColor(.black)
    }
}

#Preview {
    HomeView()
}
