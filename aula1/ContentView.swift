//
//  ContentView.swift
//  aula1
//
//  Created by Turma01-16 on 18/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Rectangle()
                    .frame(width: 90.0 ,height: 90.0)
                    .foregroundColor(.red)
                    Spacer()
                Rectangle()
                    .frame(width: 90.0 ,height: 90.0)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            .padding()
            Spacer()
            HStack{
                Rectangle()
                    .frame(width: 90.0 ,height: 90.0)
                    .foregroundColor(.green)
                    Spacer()
                Rectangle()
                    .frame(width: 90.0 ,height: 90.0)
                    .foregroundColor(.yellow)
            }
            .padding()
        }
    }
}
    #Preview {
        ContentView()
    }

