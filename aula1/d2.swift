//
//  d2.swift
//  aula1
//
//  Created by Turma01-16 on 18/09/24.
//

import SwiftUI

struct d2: View {
    var body: some View {
        HStack{
            Image("hackatruck")
                .resizable()
                .scaledToFit()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
            Spacer()
            VStack{
                Text("HackaTruck")
                    .foregroundStyle(.red)
                Text("77 Universidades")
                    .foregroundStyle(.blue)
                Text("5 regiões")
                    .foregroundStyle(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    d2()
}
