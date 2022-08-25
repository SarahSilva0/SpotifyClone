//
//  ContentItemViewer.swift
//  spotifyClone
//
//  Created by Sarah dos Santos Silva on 23/08/22.
//

import SwiftUI

struct ContentItemViewer: View {
    
    var topSpacer_height: CGFloat = 400
    var reusableColor = Color.init(red: 99/255, green: 3/255, blue: 74/255)
    @State var playButtom_offset: CGFloat = 335
    
    var body: some View {
        
        ZStack { // estudar ZStack
            //Layer 0
            LinearGradient(gradient: Gradient(colors: [reusableColor, Color.black, Color.black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            // Nessa parte estou colorindo toda a parte e ignorando a safeArea
            //Layer 1
            VStack {
                Spacer() // isso cria um espaco entre a parte de cima da view
                    .frame(height: 50)
                
                Image("ghibli")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Text("Title")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                
                Text("Subtitle")
                    .foregroundColor(.init(red: 0.5, green: 0.5, blue: 0.5))
                    .font(.system(size: 16, weight: .medium))
                
                Spacer() // esse ta criando um espaco entre a parte de baixo da view
            }
            //Layer 2
            ScrollView{ // Tornando toda essa sessao em uma scrollView
                GeometryReader{ geo -> AnyView? in
                    let thisOffSet = geo.frame(in: .global).minY
                    
                    if thisOffSet > -300{
                        self.playButtom_offset = thisOffSet
                        
                    }
                    else{
                        self.playButtom_offset = -300
                        
                    }
                    return nil
                }
                VStack(spacing: 0){
                    HStack {
                        Spacer()
                            .frame(height: topSpacer_height)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.clear, Color.clear, Color.clear, Color.black]), startPoint: .top, endPoint: .bottom))
                    }
                    
                    VStack {
                        ForEach(0..<30){ indicator in // Esse ForEach, estou criando uma repeticao do text.
                            
                            HStack {
                                lImage_text_rImage() // cor do text
                                Spacer()
                            }
                        }
                    }.background(Color.black)//color da Vstack do ForEach
                    
                }.background(Color.clear) // color da Scroll View
            }
            
            VStack{
                LinearGradient(gradient: Gradient(colors: [reusableColor, Color.clear]), startPoint: .top, endPoint: .bottom).frame(height: 300)
                Spacer()
            }.edgesIgnoringSafeArea(.all)
            
            
            
            
            
            //Layer 3
            VStack {
                Spacer()
                    .frame(height: playButtom_offset + 300)
                HStack{
                    
                    if (playButtom_offset > -300){
                        Text("Play")
                        
                    }
                    else{
                        
                        Image(systemName: "play.fill")
                    }
                }
                .foregroundColor(.white)
                .frame(width: get_playButtomWidth(), height: 50)
                .background(Color.init(red: 30/255, green: 215/255, blue: 96/255))
                .cornerRadius(25)
                .font(.system(size: 17, weight: .bold))
                .shadow(radius: 20)
                Spacer()
            }
            //Layer 4
            VStack{
                HStack{
                    Image(systemName: "chevron.left")
                    Spacer()
                    Image(systemName: "ellipsis")
                    
                }
                .foregroundColor(.white)
                .padding()
                Spacer()
            }
            //Observer layer
            VStack{
                //Text("\(playButtom_offset)")
                    //.foregroundColor(.yellow)
                Spacer()
            }
            
        }
    }
    
    func get_playButtomWidth() -> CGFloat { // mudanca do tamanho do botao de play
        
        if playButtom_offset > -150 {
            
            return 240
        }
        else if playButtom_offset <= -300 {
            return 50
        }
        
        else{
            var width: CGFloat = 240 - (190*(((-1 * playButtom_offset) - 150) / 150)) // tendi nada disso aqui
            return 100
        }
    }
}

struct ContentItemViewer_Previews: PreviewProvider {
    static var previews: some View {
        ContentItemViewer()
    }
}


/// command+option+left ou right
/// HStack é uma camada em cima da outra
