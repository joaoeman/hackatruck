//
//  listaview.swift
//  tabview
//
//  Created by Turma01-16 on 23/09/24.
//

import SwiftUI

struct listaview: View {
    var body: some View {
        VStack{
            HStack{
                Text("List")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                Spacer()
                    .padding()
                
            }
            .padding()
            VStack{
                HStack{
                    Text("Item")
                        .padding(.horizontal)
                    Spacer()
                    Image(systemName: "paintbrush")
                    
                }
                
                HStack{
                    Text("Item")
                        .padding(.horizontal)
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                .padding(.vertical)
                
                HStack{
                    Text("Item")
                        .padding(.horizontal)
                    Spacer()
                    HStack {
                        Image(systemName: "paintbrush")
                        
                    }
                }
            }
                Spacer()
            }
        .padding()
        }
        
        
    }

#Preview {
    listaview()
}
