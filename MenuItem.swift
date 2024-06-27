//
//  MenuItem.swift
//  Menu App
//
//  Created by Hong Huang on 6/26/24.
//

import Foundation

struct MenuItem:Identifiable, Hashable {
    
    var id: UUID = UUID()
    var name: String
    var price: String
    var imageName: String
    
}
