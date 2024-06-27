//
//  SecondaryDataService.swift
//  Menu App
//
//  Created by Hong Huang on 6/26/24.
//

import Foundation

struct SecondaryDataService {
    
    var items:[MenuItem] = []
    
    func getData() -> [MenuItem] {
        return items
    }
    
    mutating func addData(item:MenuItem) {
        items.append(item)
    }
    
}
