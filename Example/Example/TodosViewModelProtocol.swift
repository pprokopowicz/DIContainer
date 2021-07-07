//
//  TodosViewModelProtocol.swift
//  Example
//
//  Created by Piotr Prokopowicz on 07/07/2021.
//

import Foundation

protocol TodosViewModelProtocol: ObservableObject {
    var todos: [TodoModel] { get }
    func fetchData()
}
