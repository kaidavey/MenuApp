//
//  CartView.swift
//  Menu App
//

import SwiftUI


struct CartView: View {
    
    @State var menuItems:[MenuItem] = []
    var dataService = DataService()
    
    var body: some View {
        NavigationStack {
            List(menuItems) { item in
                NavigationLink(value: item) {
                    MenuListRow(item: item)
                }
                
            }
            .onAppear {
                menuItems = dataService.getData()
            }
            .navigationTitle("Cart")
            .navigationDestination(for: MenuItem.self) { item in
                DetailedView(item:item)
            }
        }
    }
}

#Preview {
    CartView()
}
