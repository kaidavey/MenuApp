//
//  SecondaryDataService.swift
//  Menu App
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
