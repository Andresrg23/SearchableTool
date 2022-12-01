//
//  ContentView.swift
//  SearchableTools
//
//  Created by Andres Restrepo Gonzalez on 28/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.filteredData, id: \.self) { tool in
                    NavigationLink(destination: Text(tool)) {
                        Text(tool)
                        }
                    }
                    
                }
                .navigationTitle("SEARCH TOOLS")
                .foregroundColor(.green)
                .searchable(text: $viewModel.query, prompt: "Search")
            }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
