//
//  ViewModel.swift
//  SearchableTools
//
//  Created by Andres Restrepo Gonzalez on 5/10/22.
//

import Foundation


class ViewModel: ObservableObject {
    
    @Published var filteredData: [String]?
    
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
        
    func search(with query: String ) {
        filteredData = query .isEmpty ? tools : tools.filter{ ($0.contains(query))}
    }
    
}
