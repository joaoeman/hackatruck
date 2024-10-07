//
//  viewmodel.swift
//  umidade
//
//  Created by Turma01-16 on 07/10/24.
//

import Foundation
import Foundation
class ViewModel: ObservableObject{
    @Published var chars : [umido] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL(string: "http://127.0.0.1:1880/getleitura")!){ data, _, error in
            do{
                self.chars = try JSONDecoder().decode([umido].self, from: data!)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
