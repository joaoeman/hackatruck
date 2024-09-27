//
//  ContentView.swift
//  desafio
//
//  Created by Turma01-16 on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationStack{
                VStack{
                    NavigationLink(destination: modo1()){
                        Text("Modo 1")
                    }
                    NavigationLink(destination: modo2()){
                        Text("Modo 2")
                    }
                    Button("Modo 3") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
