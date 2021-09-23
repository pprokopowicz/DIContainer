//
//  Assembler.swift
//  
//
//  Created by Piotr Prokopowicz on 23/09/2021.
//

import Foundation

public final class Assembler {
    
    // MARK: - Property
    
    private let container: DependencyContainer
    public var resolver: Resolver {
        container
    }
    
    // MARK: - Init
    
    public init(container: DependencyContainer, assemblies: [Assembly]) {
        self.container = container
        assemblies.forEach {
            $0.assemble(registrant: container)
        }
    }
}
