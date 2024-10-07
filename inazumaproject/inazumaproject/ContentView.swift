//
//  ContentView.swift
//  inazumaproject
//
//  Created by Turma01-16 on 02/10/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationStack{
            ZStack{
                VStack {
                    LinearGradient(gradient: Gradient(colors: [.orange, .orange, .yellow]), startPoint: .top, endPoint: .bottom)
                }
                .edgesIgnoringSafeArea(.all)
                VStack{
                    Image("pramelhorar-transformed").resizable()
                        .frame(width: 400,height: 300)
                        .ignoresSafeArea()
                    
                    Spacer()
                    ScrollView{
                        ForEach(viewModel.chars, id: \.self){p in
                            HStack{
                                AsyncImage(url: URL(string: p.image!)){
                                    image in
                                    image.image?.resizable().scaledToFit()
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 2, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                }
                                Text(p.nome!)
                                    .foregroundStyle(.black)
                            }
                        }
                    }
                }
            }
        }
        .onAppear(){
            viewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
