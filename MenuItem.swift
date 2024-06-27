//
//  MenuItem.swift
//  Menu App
//

import Foundation

struct MenuItem:Identifiable, Hashable {
    
    var id: UUID = UUID()
    var name: String
    var price: String
    var imageName: String
    
}
