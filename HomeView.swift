//
//  HomeView.swift
//  Menu App
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var orderManager = OrderManager()
    
    var body: some View {
        TabView {
            MenuView()
                .environmentObject(orderManager)
                .tabItem {
                    Image(systemName: "menucard.fill")
                    Text("Menu")
                }
            OrderView()
                .environmentObject(orderManager)
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Order")
                }
        }
        .accentColor(.black)
    }
}

#Preview {
    HomeView()
}
