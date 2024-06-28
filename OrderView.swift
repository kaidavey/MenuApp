//
//  OrderView.swift
//  Menu App
//

import SwiftUI
import SwiftData

struct OrderView: View {
    
    @EnvironmentObject var orderManager:OrderManager
    
    var body: some View {
        @State var subtotal:Double = round(orderManager.total * 100) / 100
        @State var tax:Double = round((orderManager.total * 0.1005) * 100) / 100
        @State var total:Double = round((subtotal + tax) * 100) / 100
        
        NavigationView {
            VStack {
                
                if orderManager.items.count == 0 {
                    Text("You have no items in your order.")
                } else {
                    
                    List {
                        ForEach(orderManager.items) { item in
                            MenuListRow(item: item, sfSymbol: "trash.fill")
                                .environmentObject(orderManager)
                        }
                        
                    }
                    .navigationTitle(Text("Your Order"))
                    
                    VStack(spacing: 10.0) {
                        HStack {
                            Text("Subtotal:")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .padding(.leading)
                            
                            
                            Spacer()
                            
                            Text("$" + String(subtotal))
                                .padding(.trailing)
                        }
                        .padding(.top)
                        
                        HStack {
                            Text("Tax:")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .padding(.leading)
                            
                            Spacer()
                            
                            Text("$" + String(tax))
                                .padding(.trailing)
                        }
                        
                        HStack {
                            Text("Total:")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .padding(.leading)
                            
                            Spacer()
                            
                            Text("$" + String(total))
                                .padding(.trailing)
                        }
                        .padding(.bottom)
                    }
                }
            }
        }
    }
}

#Preview {
    OrderView()
}
