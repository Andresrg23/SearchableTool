//
//  ContentView.swift
//  SearchableTools
//
//  Created by Andres Restrepo Gonzalez on 28/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var query = " "
    let tools = [
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
    
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredData, id: \.self) { tools in
                    NavigationLink(destination: Text(tools)) {
                        Text(tools)
                    }
                }
            }
            .searchable(text: $query, prompt: "Buscar")
            .navigationTitle("TOOLS FOR SEARCH")
        }
    }
    var filteredData: [String] {
        if query.isEmpty {
            return tools
        } else {
            return tools.filter {$0.contains(query)
                
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
