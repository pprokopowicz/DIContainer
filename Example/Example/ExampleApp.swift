//
//  ExampleApp.swift
//  Example
//
//  Created by Piotr Prokopowicz on 07/07/2021.
//

import SwiftUI
import DIContainer

@main
struct ExampleApp: App {
    
    init() {
        DIAssembler.assemble(with: Container.shared)
    }
    
    var body: some Scene {
        WindowGroup {
            TodosView(viewModel: Container.shared.resolve(type: TodosViewModel.self))
        }
    }
}
