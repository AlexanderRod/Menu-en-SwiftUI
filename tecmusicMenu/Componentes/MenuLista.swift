//
//  MenuLista.swift
//  tecmusicMenu
//
//  Created by alexander rodrigo calderon eguiluz on 24/06/22.
//

import SwiftUI

struct MenuLista: View {
    var menus: [Menu]
    var body: some View {
        VStack{
            HStack{
                Text("\(menus.count) \(menus.count > 1 ? "Canciones" : "Cancion")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .opacity(0.7)
                
                Spacer()
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15){
                ForEach(menus) { menu in MenuCard(menu: menu)
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct MenuLista_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            MenuLista(menus: Menu.all)
        }
    }
}
