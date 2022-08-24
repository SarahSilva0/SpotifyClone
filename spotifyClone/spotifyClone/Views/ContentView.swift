//
//  ContentView.swift
//  spotifyClone
//
//  Created by Sarah dos Santos Silva on 23/08/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        
        //Criando a TabView
        
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            
            HomePage() // Visualizando outra view 
                .tabItem {
                Label("Home", systemImage: "house")
            }.tag(0)
            
            SearchPage()
                .tabItem {
                Label("Search", systemImage: "magnifyingglass")
            }.tag(1)
            
        }

        // final da TabView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
