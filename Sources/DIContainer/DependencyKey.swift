//
//  DependencyKey.swift
//  
//
//  Created by Piotr Prokopowicz on 25/06/2021.
//

internal final class DependencyKey: Hashable, Equatable {
    
    // MARK: - Properties
    
    private let type: Any.Type
    private let name: String?

    // MARK: Init
    
    internal init(type: Any.Type, name: String? = nil) {
        self.type = type
        self.name = name
    }
    
    // MARK: - Hashable

    internal func hash(into hasher: inout Hasher) {
        hasher.combine(ObjectIdentifier(type))
        hasher.combine(name)
    }
    
    // MARK: - Equatable

    internal static func == (lhs: DependencyKey, rhs: DependencyKey) -> Bool {
        return lhs.type == rhs.type && lhs.name == rhs.name
    }
}
