//
//  TodosViewModel.swift
//  Example
//
//  Created by Piotr Prokopowicz on 07/07/2021.
//

import Foundation
import Combine

final class TodosViewModel: TodosViewModelProtocol {
    
    @Published var todos: [TodoModel] = []
    private let dataSource: TodosDataSourceScheme
    private var cancellable: AnyCancellable?
    
    init(dataSource: TodosDataSourceScheme) {
        self.dataSource = dataSource
    }
    
    func fetchData() {
        cancellable = dataSource.todos()
            .receive(on: RunLoop.main)
            .sink(
                receiveCompletion: { _ in },
                receiveValue: { [weak self] value in
                    self?.todos = value
                })
    }
    
}
