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
    
    private let assembler: Assembler = .init(container: Container(), assemblies: [
        ViewModelAssembly(),
        NetworkingAssembly()
    ])
    
    var body: some Scene {
        WindowGroup {
            TodosView(viewModel: assembler.resolver.resolve(type: TodosViewModel.self))
        }
    }
}
