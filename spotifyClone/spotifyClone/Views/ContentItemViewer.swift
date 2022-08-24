//
//  ContentItemViewer.swift
//  spotifyClone
//
//  Created by Sarah dos Santos Silva on 23/08/22.
//

import SwiftUI

struct ContentItemViewer: View {
    var body: some View {
        
        ZStack { // estudar ZStack
            VStack {
                Spacer() // isso cria um espaco entre a parte de cima da view
                    .frame(height: 50)
                
                Image(systemName: "music.note")
                Text("Title")
                Text("Subtitle")
                
                Spacer() // esse ta criando um espaco entre a parte de baixo da view
            }
            
            VStack{
                Spacer()
                    .frame(width: 50, height: 200)
                    .background(Color.clear)
                
                Spacer()
                    .frame(width: 200)
                    .background(Color.blue)
            }
        }
    }
}

struct ContentItemViewer_Previews: PreviewProvider {
    static var previews: some View {
        ContentItemViewer()
    }
}


/// command+option+left ou right
