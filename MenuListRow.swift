//
//  MenuListRow.swift
//  Menu App
//

import SwiftUI

struct MenuListRow: View {
    
    @EnvironmentObject var orderManager :OrderManager
    var item:MenuItem
    var sfSymbol:String
    
    var body: some View {
        
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10.0)
                
            Text(item.name)
                .bold()
                .foregroundStyle(.black)
                
                
            Spacer()
                
            Text("$" + String(item.price))
            
            if sfSymbol.count > 0 {
                Button {
                    orderManager.removeFromOrder(item: item)
                } label: {
                    Image(systemName: sfSymbol)
                        .foregroundStyle(.red)
                }
            }
            
        }
        .listRowSeparator(.hidden)
        .listRowBackground(Color.clear)
    }
}

#Preview {
    MenuListRow(item:MenuItem(name: "Onigiri", price: 1.99, imageName: "onigiri"), sfSymbol: "trash.fill")
}
