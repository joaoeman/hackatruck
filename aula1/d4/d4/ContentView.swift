//
//  ContentView.swift
//  d4
//
//  Created by Turma01-16 on 20/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var peso : Double!
    @State private var altura : Double!
    @State private var col: Color = .blue
    @State private var str: String = ""
    
    func jhom(){
        @State var imc = peso/(altura*altura)
        if(imc < 18.5){
            col = .baixo
            str = "Baixo peso"
        }
        else if(imc >= 18.5 && imc < 25){
            col = .normal
            str = "Normal"
        }
        else if(imc > 25 && imc <= 30){
            col = .sobrepeso
            str = "Sobrepeso"
        }
        else{
            col = .obesidade
            str = "Obesidade"
            
        }
        
    }
    var body: some View {
        ZStack{
            col
                .ignoresSafeArea()
            VStack{
                Text("Calculadora de IMC")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                TextField("Peso",value: $peso,format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.white)
                    .frame(width: 350)
                    .cornerRadius(10.0)
                    .padding()
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    
                
                TextField("Altura",value: $altura,format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.white)
                    .frame(width: 350)
                    .cornerRadius(10.0)
                    .padding()
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                Button("Calcular") {
                    jhom()
                }
                .frame(height: 40)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10.0)
                
                Spacer()
                Text("\(str)")
                    .foregroundStyle(.white)
                Spacer()
                
                Image("tabela")
                    .resizable()
                    .frame(width: 400)
                    .frame(height: 200)
                    
            }
            
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
