//
//  1ArgumentSpec.swift
//  
//
//  Created by Piotr Prokopowicz on 28/06/2021.
//

import Quick
import Nimble
import Container

final class OneArgumentsSpec: QuickSpec {
    
    override func spec() {
        describe("Container with one argument") {
            var sut: Container!
            
            beforeEach {
                sut = Container()
            }
            
            it("should resolve Smuggler named with argument") {
                sut.register(type: Character.self) { _, name in
                    Smuggler(name: name)
                }
                let resolvedSmuggler = sut.resolve(type: Character.self, argument: "Han")
                expect(resolvedSmuggler?.name).to(equal("Han"))
            }
            
            it("should resolve Smuggler by name with argument") {
                sut.register(type: Character.self, name: "Smuggler0") { _, name in
                    Smuggler(name: name)
                }
                
                let resolvedSmuggler = sut.resolve(type: Character.self, name: "Smuggler0", argument: "Han")
                expect(resolvedSmuggler?.name).to(equal("Han"))
            }
            
            it("should resolve two different Smugglers by name with argument") {
                sut.register(type: Character.self, name: "Smuggler0") { _, name in
                    Smuggler(name: name)
                }
                sut.register(type: Character.self, name: "Smuggler1") { _, name in
                    Smuggler(name: name)
                }
                
                let han = sut.resolve(type: Character.self, name: "Smuggler0", argument: "Hand")
                let lando = sut.resolve(type: Character.self, name: "Smuggler1", argument: "Lando")
                expect(han).toNot(beNil())
                expect(lando).toNot(beNil())
                expect(han?.name).toNot(equal(lando?.name))
            }
        }
    }
    
}
