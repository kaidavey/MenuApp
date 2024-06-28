//
//  ContentView.swift
//  Menu App
//

import SwiftUI

struct MenuView: View {
    
    @EnvironmentObject var orderManager:OrderManager
    @State var menuItems:[MenuItem] = []
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                
                List(menuItems) { item in
                    NavigationLink(value: item) {
                        MenuListRow(item: item, sfSymbol: "")
                    }
                    
                }
                .listRowSeparator(.hidden)
                .onAppear {
                    menuItems = dataService.getData()
                }
                .navigationTitle("Sushi Menu")
                .navigationDestination(for: MenuItem.self) { item in
                    DetailedView(item:item)
                        .environmentObject(orderManager)
                }
            }
        }
    }
    
}

#Preview {
    MenuView()
}
