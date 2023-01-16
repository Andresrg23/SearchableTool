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
                .accessibilityIdentifier("List_of_tools")
                .onDelete { IndexSet in
                    viewModel.deleteTools(at: IndexSet)
                }
            }
            .navigationTitle("SEARCH TOOLS")
            .foregroundColor(.blue)
            .searchable(text: $viewModel.query, prompt: "Search")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { viewModel.addItem.toggle()}, label: {Image(systemName: "plus")})
                }
            }
            
            
        } .sheet(isPresented: $viewModel.addItem) {
            Text("Tool Name: ")
            TextField("Add an Item", text: $viewModel.addItemName)
            Button(action: {viewModel.addButton() }, label: {Text("Add")})
                .accessibilityIdentifier("add_new_tool")
        }
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
