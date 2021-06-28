//
//  Sample.swift
//  
//
//  Created by Piotr Prokopowicz on 28/06/2021.
//

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
