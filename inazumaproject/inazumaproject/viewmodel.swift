//
//  viewmodel.swift
//  inazumaproject
//
//  Created by Turma01-16 on 02/10/24.
//

import Foundation
class ViewModel: ObservableObject{
    @Published var chars : [inazuma] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL(string: "http://127.0.0.1:1880/getleitura")!){ data, _, error in
            do{
                self.chars = try JSONDecoder().decode([inazuma].self, from: data!)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
