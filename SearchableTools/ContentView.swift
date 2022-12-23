//
//  ContentView.swift
//  SearchableTools
//
//  Created by Andres Restrepo Gonzalez on 28/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    @State var addItemName: String = " "
    @State var addItem = false
    
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
            .foregroundColor(.blue)
            .searchable(text: $viewModel.query, prompt: "Search")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { self.addItem.toggle()}, label:{ Text("Add")})
                }
            }
            
        } .sheet(isPresented: $addItem) {
            Text("Tool Name: ")
            TextField("Add an Item", text: self.$addItemName)
            Button(action: {
                viewModel.tools.append(self.addItemName)
                
                self.addItem.toggle()
                self.addItemName = ""
                
            }, label: {
                Text("Add")
            })
        }
        }
        
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
