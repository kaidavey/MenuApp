//
//  SpecificItem.swift
//  Menu App
//

import SwiftUI

struct DetailedView: View {
    
    @EnvironmentObject var orderManager:OrderManager
    var item:MenuItem
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.clear)
            
            VStack {
                
                HStack {
                    Text(item.name)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding()
                    
                    Spacer()
                    
                    Text("$" + String(item.price))
                        .font(.title3)
                        .padding()
                }
                
                
                Image(item.imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10.0)
                    .padding()
                
                Button("Add to Order") {
                    orderManager.addToOrder(item: item)
                }
                .buttonStyle(.bordered)
                .controlSize(.extraLarge)
                .foregroundColor(.black)
                .font(.title3)
                .fontWeight(.semibold)
                
                Spacer()
            }
            
        }
        
    }
}

#Preview {
    DetailedView(item:MenuItem(name: "Onigiri", price: 1.99, imageName: "onigiri"))
}
