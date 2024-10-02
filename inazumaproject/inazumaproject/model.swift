//
//  model.swift
//  inazumaproject
//
//  Created by Turma01-16 on 02/10/24.
//

import Foundation
struct inazuma: Codable,Hashable{
    var _id: String?
    var _rev: String?
    var nome: String?
    var tecnicas: [String]?
    var image: String?
}
