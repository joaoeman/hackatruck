//
//  cinzaview.swift
//  tabview
//
//  Created by Turma01-16 on 23/09/24.
//

import SwiftUI

struct cinzaview: View {
    var body: some View {
        ZStack{
            Color.gray
            .ignoresSafeArea()
            Circle()
                .frame(height: 300)
                .frame(width: 350)
            Image(systemName: "paintbrush")
                .resizable()
                .frame(height: 250)
                .frame(width: 230)
                
                .foregroundColor(.gray)
            VStack{
                Spacer()
                Rectangle()
                    .ignoresSafeArea()
                    .frame(height: 0)
                    .foregroundColor(.white)
                    
            }
        }
    }
}

#Preview {
    cinzaview()
}
