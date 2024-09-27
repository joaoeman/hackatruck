//
//  charsview.swift
//  Harry potter
//
//  Created by Turma01-16 on 27/09/24.
//

import SwiftUI

struct charsview: View {
    var name2: HaPo
    
    var body: some View {
        ZStack{
            Color.hapo.ignoresSafeArea()
            VStack{
                
                AsyncImage(url: URL(string: name2.image!)){
                    image in
                    image.image?.resizable()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                }
                Text(name2.name!)
            }
        }
    }
}


