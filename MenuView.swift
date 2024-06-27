//
//  ContentView.swift
//  Menu App
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = []
    var dataService = DataService()
    
    var body: some View {

        NavigationStack {
            ZStack {
                
                List(menuItems) { item in
                    NavigationLink(value: item) {
                        MenuListRow(item: item)
                    }
                    
                }
                .listRowSeparator(.hidden)
                .onAppear {
                    menuItems = dataService.getData()
                }
                .navigationTitle("Sushi Menu")
                .navigationDestination(for: MenuItem.self) { item in
                    DetailedView(item:item)
                }
            }
        }
    }

}

#Preview {
    MenuView()
}
