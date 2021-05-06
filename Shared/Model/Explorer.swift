//
//  Explorer.swift
//  tvOS 01
//
//  Created by R. Kukuh on 29/04/21.
//

import SwiftUI
import Foundation

struct Explorer: Hashable, Codable {
    var name: String
    var expertise: String
    var team: String
    var shift: String
    
    private var photo: String
    var profilePicture: Image {
        Image(photo)
    }
}
