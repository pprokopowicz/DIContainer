//
//  TodosDataSource.swift
//  Example
//
//  Created by Piotr Prokopowicz on 07/07/2021.
//

import Foundation
import Combine

struct TodosDataSource: TodosDataSourceScheme {
    
    func todos() -> AnyPublisher<[TodoModel], Error> {
        URLSession.shared
            .dataTaskPublisher(for: URL(string: "https://jsonplaceholder.cypress.io/todos")!)
            .map { $0.data }
            .decode(type: [TodoModel].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
}
