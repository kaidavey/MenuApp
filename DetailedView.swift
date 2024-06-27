//
//  SpecificItem.swift
//  Menu App
//

import SwiftUI

struct DetailedView: View {
    
    var item:MenuItem
    var secondaryDataService = SecondaryDataService()
    
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
                
                Button("Add to Cart") {
                    //secondaryDataService.addData(item:item)
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
    DetailedView(item:MenuItem(name: "Onigiri", price: "1.99", imageName: "onigiri"))
}
