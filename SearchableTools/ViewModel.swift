//
//  ViewModel.swift
//  SearchableTools
//
//  Created by Andres Restrepo Gonzalez on 5/10/22.
//

import Foundation


class ViewModel: ObservableObject {
    
    @Published var addItemName = ""
    @Published var addedItem = " "
    @Published var addItem = false
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

    var filteredData: [String] {
      if query.isEmpty {
        return tools
      } else {
        return tools.filter {
          $0.contains(query)
        }
      }
    }
    
    
    func addButton() {
        
        tools.append(addItemName)
        addedItem = addItemName
        addItem.toggle()
        addItemName = ""

    }
    
    
}
