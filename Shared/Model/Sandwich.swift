//
//  Sandwich.swift
//  Multi Platform 01
//
//  Created by R. Kukuh on 04/05/21.
//

import Foundation

struct Sandwich: Identifiable {
    
    var id = UUID()
    var name: String
    var ingredientCount: Int
    var isSpicy: Bool
    
    var imageName: String { return name }
    var thumbnailName: String { return name + " Thumb" }
}
