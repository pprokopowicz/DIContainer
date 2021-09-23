//
//  DIAssembler.swift
//  Example
//
//  Created by Piotr Prokopowicz on 07/07/2021.
//

import Foundation
import DIContainer

struct ViewModelAssembly: Assembly {
    func assemble(registrant: Registrant) {
        registrant.register(type: TodosViewModel.self) { resolver in
            TodosViewModel(
                dataSource: resolver.resolve(type: TodosDataSourceScheme.self)
            )
        }
    }
}

struct NetworkingAssembly: Assembly {
    func assemble(registrant: Registrant) {
        registrant.register(type: TodosDataSourceScheme.self) { _ in
            TodosDataSource()
        }
    }
}
