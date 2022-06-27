//
//  SongCard.swift
//  tecmusicMenu
//
//  Created by alexander rodrigo calderon eguiluz on 24/06/22.
//

import SwiftUI

struct SongCard: View {
    var menu: Menu
    
    var body: some View {
        VStack {
            Text(menu.name)
                .font(.headline)
                .foregroundColor(.white)
                .shadow(color: .black, radius: 3, x: 0, y:0)
                .frame(maxWidth: 136)
                .frame(maxHeight: 0)
                .padding()
            AsyncImage(url: URL(string: menu.image)) { image in image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .bottom){
                        Text(menu.cancion)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x: 0, y:0)
                            .frame(maxWidth: 136)
                            .padding()
                    }
                
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .frame(width: 160, height: 230, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
    }
}


struct SongCard_Previews: PreviewProvider {
    static var previews: some View {
        SongCard(menu: Menu.all[0])
    }
}
