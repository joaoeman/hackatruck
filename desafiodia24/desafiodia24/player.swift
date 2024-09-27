//
//  player.swift
//  desafiodia24
//
//  Created by Turma01-16 on 24/09/24.
//

import SwiftUI

struct player: View {
    @State var autor1 = ""
    @State var nome1 = ""
    @State var ima1 = ""
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .black, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                Image(ima1)
                    .resizable()
                    .frame(width: 250)
                    .frame(height: 250)
                Text(nome1)
                    .foregroundStyle(.white)
                    .bold()
                Text(autor1)
                    .foregroundStyle(.white)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                HStack{
                    Image(systemName: "shuffle")
                        .resizable()
                        .frame(width: 30,height: 30)
                        .padding()
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .frame(width: 30,height: 30)
                        .padding()
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 30,height: 30)
                        .padding()
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .frame(width: 30,height: 30)
                        .padding()
                    Image(systemName: "repeat")
                        .resizable()
                        .frame(width: 30,height: 30)
                        .padding()
                    
                        
                }
                .foregroundColor(.white)
                
            }
        }
    }
}

#Preview {
    player()
}
