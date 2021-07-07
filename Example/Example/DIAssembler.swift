//
//  DIAssembler.swift
//  Example
//
//  Created by Piotr Prokopowicz on 07/07/2021.
//

import Foundation
import DIContainer

enum DIAssembler {
    
    static func assemble(with container: Registrant) {
        ViewModelAssembler.assemble(with: container)
        NetworkingAssembler.assemble(with: container)
    }
    
}

enum ViewModelAssembler {
    
    static func assemble(with container: Registrant) {
        container.register(type: TodosViewModel.self) { resolver in
            TodosViewModel(
                dataSource: resolver.resolve(type: TodosDataSourceScheme.self)
            )
        }
    }
    
}

enum NetworkingAssembler {
    
    static func assemble(with container: Registrant) {
        container.register(type: TodosDataSourceScheme.self) { _ in
            TodosDataSource()
        }
    }
    
}
