//
//  ViewModel.swift
//  SearchableTools
//
//  Created by Andres Restrepo Gonzalez on 5/10/22.
//

import Foundation


class ViewModel: ObservableObject {
    
    @Published var query = ""

    @Published var tools = [
             "Martillo",
             "Pala",
             "Taladro",
             "Destornillador",
             "Alicate",
             "Ratchet",
             "Copa",
             "Pulidora",
             "Pinzas",
             "Gato"
         ]
    
    var countTools: Int {
        return tools.count
    }
    
    var filteredData: [String] {
        if query.isEmpty {
          return tools
        } else {
          return tools.filter {
            $0.contains(query)
          }
        }
      }
    
}

