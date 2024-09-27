//
//  ContentView.swift
//  Harry potter
//
//  Created by Turma01-16 on 27/09/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationStack{
            ZStack{
                Color.hapo
                    .ignoresSafeArea()
                VStack(alignment: .center) {
                    AsyncImage(url: URL(string: "https://tm.ibxk.com.br/2021/04/19/19165615261383.jpg"))
                    {
                        image in
                        image.image?.resizable()
                            .scaledToFit()
                            .ignoresSafeArea()
                            .frame(width: 500)
                        ScrollView{
                            VStack(alignment: .leading){
                                ForEach(viewModel.chars){ p in
                                    NavigationLink(destination: charsview(name2: p)){
                                        
                                        HStack(alignment: .center){
                                            AsyncImage(url: URL(string: p.image!)){
                                                image in
                                                image.resizable()
                                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                            } placeholder: {
                                                ZStack{
                                                    Circle()
                                                        
                                                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                                        .foregroundColor(.gray)
                                                    Image(systemName: "person.fill")
                                                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                                }
                                            }
                                            Text(p.name!)
                                                
                                        }
                                    }
                                    .foregroundColor(.white)
                                }
                            }
                        }
                        Spacer()
                    }
                }
            }
        }
        .accentColor(.white)
        .onAppear(){
                viewModel.fetch()
            }
    }
    
}

#Preview {
    ContentView()
}
