//
//  ContentView.swift
//  desafiodia24
//
//  Created by Turma01-16 on 24/09/24.
//

import SwiftUI

struct musica: Identifiable{
    var nome: String
    var autor: String
    var id: Int
    var ima = ""
}
var listas = [ musica(nome: "Pontes Indestrutiveis", autor: "Charlie Brown Jr.", id: 1,ima :"zoio"), musica(nome: "Zoio de Lula", autor: "Charlie Brown Jr.",id: 2, ima: "zoio"), musica(nome: "Só por uma noite", autor: "Charlie Brown Jr.",id: 3,ima:"zoio"), musica(nome: "teste4", autor: "teste2",id: 4),musica(nome: "teste5", autor: "teste2",id: 5),musica(nome: "teste6", autor: "teste2",id: 6),musica(nome: "teste7", autor: "teste2",id: 7),musica(nome: "teste8", autor: "teste2",id: 8),musica(nome: "teste9", autor: "teste2",id: 9),musica(nome: "teste10", autor: "teste2",id: 10)]

struct ContentView: View {
    
    var body: some View {
        NavigationStack{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .black, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
                VStack {
                    
                    Spacer()
                    ScrollView{
                        Image("ipppo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300)
                            .frame(height: 200)
                            .padding()
                        Text("Playlist")
                            .foregroundStyle(.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                            .padding(.vertical)
                        ForEach(listas) { lista in
                            
                            NavigationLink(destination: player(autor1:lista.autor, nome1: lista.nome, ima1: lista.ima)){
                                HStack(alignment: .center){
                                    
                                    Image(lista.ima)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 70)
                                        .frame(height: 70)
                                    
                                    
                                    VStack(alignment: .leading){
                                        
                                        /*@START_MENU_TOKEN@*/Text(lista.nome)/*@END_MENU_TOKEN@*/
                                            .foregroundStyle(.white)
                                            .bold()
                                        
                                        
                                        Text(lista.autor)
                                            
                                            .foregroundColor(.white)
                                            .font(.subheadline)
                                            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                    }
                                }
                                
                                
                                Spacer()
                                Button(action: {}, label: {
                                    Image(systemName: "ellipsis")
                                        .resizable()
                                        .scaledToFit()
                                        .foregroundColor(.white)
                                        .frame(width: 20, height: 25)
                                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                })
                            }
                        }
                        
                        HStack(){
                            Text("Sugeridos")
                                .foregroundStyle(.white)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .bold()
                        }
                        ScrollView(.horizontal){
                            HStack{
                                Image("folhetim")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300)
                                Image("codinome")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 260)
                                Image("igor")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 250,height: 250)
                                
                            }
                        }
                        
                        
                        
                    }
                }
                .padding()
                
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
