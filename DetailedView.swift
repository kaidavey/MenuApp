//
//  SpecificItem.swift
//  Menu App
//
//  Created by Hong Huang on 6/26/24.
//

import SwiftUI

struct DetailedView: View {
    
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
                    
                    Text("$" + item.price)
                        .font(.title3)
                        .padding()
                }
                
                
                Image(item.imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10.0)
                    .padding()
                
                
                
                Spacer()
            }
            
        }
        
    }
}

#Preview {
    DetailedView(item:MenuItem(name: "Onigiri", price: "1.99", imageName: "onigiri"))
}
