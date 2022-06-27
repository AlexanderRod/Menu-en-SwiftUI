//
//  ReproductorView.swift
//  tecmusicMenu
//
//  Created by alexander rodrigo calderon eguiluz on 27/06/22.
//

import SwiftUI

struct ReproductorView: View {
    var menu: Menu
    
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [
                    Color.black,
                    Color.gray
                ]),startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all, edges: .all)
                ScrollView{
                    AsyncImage(url: URL(string: menu.image)) { image in image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                    } placeholder: {
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100, alignment: .center)
                            .foregroundColor(.white.opacity(0.7))
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                    .frame(height: 700)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
                }
            }
            .ignoresSafeArea(.container, edges: .top)
        }
    }
}

struct ReproductorView_Previews: PreviewProvider {
    static var previews: some View {
        ReproductorView(menu: Menu.all[0])
    }
}
