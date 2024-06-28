//
//  MenuItem.swift
//  Menu App
//

import Foundation

struct MenuItem:Identifiable, Hashable {
    
    var id: UUID = UUID()
    var name: String
    var price: Double
    var imageName: String
    
}
