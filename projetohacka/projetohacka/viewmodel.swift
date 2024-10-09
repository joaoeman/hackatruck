//
//  viewmodel.swift
//  projetohacka
//
//  Created by Turma01-16 on 09/10/24.
//

import Foundation

class ViewModel: ObservableObject{
    @Published var chars : [unibus] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL(string: "http://127.0.0.1:1880/gethacka")!){ data, _, error in
            do{
                self.chars = try JSONDecoder().decode([unibus].self, from: data!)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
