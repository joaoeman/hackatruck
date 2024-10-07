//
//  ContentView.swift
//  umidade
//
//  Created by Turma01-16 on 07/10/24.
//

import SwiftUI



struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    @State var eu: Double = 0.00
    @State var col: Color = .white
    func humilde(){
        @State var fala_jhom: Double
        fala_jhom = eu
        
        if(eu <= 20.00){
            col = .orange
        }
        else
        if(eu > 20.00 && eu <= 50.00){
            col = .yellow
        }
        else
        if(eu>50 && eu <= 75.00){
            col = .blue
        }
        else{
            col = .black
        }
    }
    var body: some View {
        VStack {
            ForEach(viewModel.chars, id: \.self){p in
               
                    Text(p.umidade!)
                        .foregroundStyle(.black)
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
