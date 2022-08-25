//
//  lImage_text_rImage.swift
//  spotifyClone
//
//  Created by Sarah dos Santos Silva on 24/08/22.
//

import SwiftUI

struct lImage_text_rImage: View {
    var body: some View {
        
        HStack{
            Image(systemName: "play").padding(.trailing,10)
            Text("Title")
            
            Spacer()
            
            Image(systemName: "ellipsis")
            
        }
        .padding(15)
        .background(Color.black)
        .foregroundColor(.white)
        
    }
}

struct lImage_text_rImage_Previews: PreviewProvider {
    static var previews: some View {
        lImage_text_rImage()
    }
}
