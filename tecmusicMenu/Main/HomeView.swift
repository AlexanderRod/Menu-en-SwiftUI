//
//  HomeView.swift
//  tecmusicMenu
//
//  Created by alexander rodrigo calderon eguiluz on 24/06/22.
//

import SwiftUI

struct HomeView: View {
    init() {
    let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
                navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
              }
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [
                    Color.black,
                    Color.gray
                ]),startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all, edges: .all)
                ScrollView{
                    MenuLista(menus: Menu.all)
                }
                .navigationTitle("Menu")
            }
            .navigationViewStyle(.stack)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
