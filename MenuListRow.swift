//
//  MenuListRow.swift
//  Menu App
//
//  Created by Hong Huang on 6/26/24.
//

import SwiftUI

struct MenuListRow: View, Hashable {
    
    var item:MenuItem
    
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
                
            Text("$" + item.price)
            
        }
        .listRowSeparator(.hidden)
        .listRowBackground(Color.clear)
    }
}

#Preview {
    MenuListRow(item:MenuItem(name: "Onigiri", price: "1.99", imageName: "onigiri"))
}
