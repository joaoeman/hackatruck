//
//  ContentView.swift
//  mapa
//
//  Created by Turma01-16 on 25/09/24.
//

import SwiftUI
import MapKit

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    @State var name2: String
    @State var descricao: String
    
    var body: some View {
        VStack{
            Image("\(name2)")
                .resizable()
                .scaledToFit()
                .frame(width: 300,height: 200)
            Spacer()
            Text("\(descricao)")
            Spacer()
        }
        .padding()
        
    }
}


struct mapp: Identifiable{
    var id = UUID()
    var ima: String
    var map : CLLocationCoordinate2D
    var descricao: String
}


struct ContentView: View {
    @State var sheet2: mapp? = nil
    @State var position = MapCameraPosition.region(MKCoordinateRegion( center: CLLocationCoordinate2D(latitude: -9.43847, longitude: -40.5052), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
    @State var name = "Juazeiro"
    @State private var sheet = false
    var mapas = [mapp(ima: "juazeiro", map:  CLLocationCoordinate2D(latitude: -9.43847, longitude:-40.5052), descricao: "Vote em minha prefeita suzana"), mapp( ima: "cananda", map:  CLLocationCoordinate2D(latitude: -14.2350, longitude:-51.9253), descricao: "vou morar em toronto"), mapp( ima: "colonia", map:  CLLocationCoordinate2D(latitude: -22.9035, longitude:-43.2096), descricao: "D. Pedro II sempre esteve certo")]
    
    var body: some View {
        ZStack{
            Map(position: $position){
                ForEach(mapas) { mapa in
                    Annotation(mapa.ima, coordinate: mapa.map) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.white)
                            Image(mapa.ima)
                                .resizable()
                                .frame(width: 20,height: 15)
                                .padding(5)
                                .onTapGesture
                                    {
                                        sheet2 = mapa
                                    }.sheet(item: $sheet2) {
                                        mapa in
                                        SheetView(name2: mapa.ima, descricao: mapa.descricao)
                                    }
                        }
                    }
                }
            }.ignoresSafeArea()
                //for
                //annotation
                VStack {
                    ZStack{
                        Rectangle()
                            .ignoresSafeArea()
                            .foregroundColor(.white)
                            .opacity(0.6)
                            .frame(height: 90)
                        VStack{
                            Text("World map")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .bold()
                            Text("\(name)")
                        }
                    }
                    Spacer()
                   
                    Spacer()
                    HStack{
                        ForEach(mapas) { mapa in
                            
                            Button(action: { position = .region(MKCoordinateRegion(center:( mapa.map), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
                                name = mapa.ima}){
                                    Image(mapa.ima)
                                        .resizable()
                                        .scaledToFit()
                                        .padding()
                                }
                        }
                    }
                }
            }
        }
    }

#Preview {
    ContentView()
}
