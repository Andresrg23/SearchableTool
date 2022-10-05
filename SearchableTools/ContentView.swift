//
//  ContentView.swift
//  SearchableTools
//
//  Created by Andres Restrepo Gonzalez on 28/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    @State private var query = " "
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(viewModel.filteredData) {_ in
                    
                    }
                }
                navigationTitle("SEARCH TOOLS")
                .searchable(text: $query, prompt: "Search")
            }
            
        }
   
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
