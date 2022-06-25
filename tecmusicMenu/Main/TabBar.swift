//
//  TabBar.swift
//  tecmusicMenu
//
//  Created by alexander rodrigo calderon eguiluz on 24/06/22.
//

import SwiftUI

struct TabBar: View {
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor.black
    }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                        .foregroundColor(Color.black)
                    
                }
            SearchView()
                .tabItem {
                    Label("Buscador", systemImage: "magnifyingglass")
                        .foregroundColor(Color.black)
                }
            BibliotecaView()
                
                .tabItem {
                    Label("Biblioteca" , systemImage: "square.fill.text.grid.1x2")
                        .foregroundColor(Color.black)
                }
        }
        .accentColor(.white)
    }
}
/*
extension TabBar {
  func setupTabBar() {
    UITabBar.appearance().unselectedItemTintColor = UIColor.white
  }
} */

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
