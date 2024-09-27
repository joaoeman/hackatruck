//
//  ContentView.swift
//  tabview
//
//  Created by Turma01-16 on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView{
                rosaview()
                    .tabItem {
                        Label("Rosa", systemImage: "paintbrush.fill")
                    }
                azulview()
                    .tabItem(){
                        Label("Azul", systemImage: "paintbrush.fill")
                    }
                cinzaview()
                    .tabItem(){
                        Label("cinza", systemImage: "paintbrush.fill")
                    }
                listaview()
                    .tabItem(){
                        Label("Lista", systemImage: "list.bullet")
                    }
            }
    }
    }
    


#Preview {
    ContentView()
}
