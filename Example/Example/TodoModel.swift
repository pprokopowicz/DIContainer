//
//  TodoModel.swift
//  Example
//
//  Created by Piotr Prokopowicz on 07/07/2021.
//

import Foundation

struct TodoModel: Decodable {
    
    let id: Int
    let title: String
    let completed: Bool
    
}
