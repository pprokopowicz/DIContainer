//
//  Sample.swift
//  
//
//  Created by Piotr Prokopowicz on 28/06/2021.
//

import DIContainer

protocol Character {
    var name: String { get }
}

struct Smuggler: Character {
    let name: String
}

class Jedi: Character {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

struct FirstAssembly: Assembly {
    func assemble(registrant: Registrant) {
        registrant.register(type: Smuggler.self) { _ in
            Smuggler(name: "Han")
        }
    }
}

struct SecondAssembly: Assembly {
    func assemble(registrant: Registrant) {
        registrant.register(type: Jedi.self) { _ in
            Jedi(name: "Luke")
        }
    }
}
