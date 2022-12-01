//
//  Images.swift
//  SearchableTools
//
//  Created by Andres Restrepo Gonzalez on 30/11/22.
//

import Foundation
import SwiftUI

struct Images: Hashable, Codable {

private var imageName: String
    
var image: Image {
    Image(imageName)
}
}
