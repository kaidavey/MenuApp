//
//  OrderManager.swift
//  Menu App
//

import Foundation

class OrderManager: ObservableObject {
    @Published private(set) var items:[MenuItem] = []
    @Published private(set) var total:Double = 0
    
    func addToOrder(item:MenuItem) {
        items.append(item)
        total += item.price
    }
    
    func removeFromOrder(item:MenuItem) {
        if let index = items.firstIndex(where: { $0.id == item.id}) {
            items.remove(at:index)
        }
        total -= item.price
    }
}
