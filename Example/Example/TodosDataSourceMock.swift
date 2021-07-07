//
//  TodosDataSourceMock.swift
//  Example
//
//  Created by Piotr Prokopowicz on 07/07/2021.
//

import Foundation
import Combine

struct TodosDataSourceMock: TodosDataSourceScheme {
    
    func todos() -> AnyPublisher<[TodoModel], Error> {
        Just([
            TodoModel(id: 1, title: "Some title 1", completed: true),
            TodoModel(id: 2, title: "Some title 2", completed: false),
            TodoModel(id: 3, title: "Some title 3", completed: true),
            TodoModel(id: 4, title: "Some title 4", completed: false),
        ])
            .mapError { _ in NSError() }
            .eraseToAnyPublisher()
    }
    
}
