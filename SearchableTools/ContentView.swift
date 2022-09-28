//
//  ContentView.swift
//  SearchableTools
//
//  Created by Andres Restrepo Gonzalez on 28/09/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("SEARCHABLE TOOLS")
            List {
                Text("Martillo")
                Text("Pala")
                Text("Taladro")
                Text("Destornillador")
                Text("Alicate")
                Text("Ratchet")
                Text("Copa")
                Text("Pulidora")
                Text("Pinzas")
                Text("Gato")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
