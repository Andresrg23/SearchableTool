//
//  UnitTestViewModel.swift
//  SearchableToolsTests
//
//  Created by Andres Restrepo Gonzalez on 5/12/22.
//

import Foundation

import SwiftUI

class UnitTestViewModel: ObservableObject {
    @Published var query: String 
    init(query: String) {
        self.query = ViewModel.query
    }
}
