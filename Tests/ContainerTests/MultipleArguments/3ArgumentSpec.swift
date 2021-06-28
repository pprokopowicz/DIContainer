//
//  3ArgumentSpec.swift
//
//
//  Created by Piotr Prokopowicz on 28/06/2021.
//

import Quick
import Nimble
import Container

final class ThreeArgumentsSpec: QuickSpec {
    
    override func spec() {
        describe("Container with one argument") {
            var sut: Container!
            
            beforeEach {
                sut = Container()
            }
            
            it("should resolve Smuggler named with arguments") {
                sut.register(type: Character.self) { _, arg0, arg1, arg2 in
                    Smuggler(name: arg0 + arg1 + arg2)
                }
                let resolvedSmuggler = sut.resolve(type: Character.self, arguments: "1", "2", "3")
                expect(resolvedSmuggler?.name).to(equal("123"))
            }
            
            it("should resolve Smuggler by name with arguments") {
                sut.register(type: Character.self, name: "Smuggler0") { _, arg0, arg1, arg2 in
                    Smuggler(name: arg0 + arg1 + arg2)
                }
                
                let resolvedSmuggler = sut.resolve(type: Character.self, name: "Smuggler0", arguments: "1", "2", "3")
                expect(resolvedSmuggler?.name).to(equal("123"))
            }
            
            it("should resolve two different Smugglers by name with arguments") {
                sut.register(type: Character.self, name: "Normal") { _, arg0, arg1, arg2 in
                    Smuggler(name: arg0 + arg1 + arg2)
                }
                sut.register(type: Character.self, name: "Reversed") { _, arg0, arg1, arg2 in
                    Smuggler(name: arg2 + arg1 + arg0)
                }
                
                let smuggler0 = sut.resolve(type: Character.self, name: "Normal", arguments: "1", "2", "3")
                let smuggler1 = sut.resolve(type: Character.self, name: "Reversed", arguments: "1", "2", "3")
                expect(smuggler0).toNot(beNil())
                expect(smuggler1).toNot(beNil())
                expect(smuggler0?.name).toNot(equal(smuggler1?.name))
            }
        }
    }
    
}
