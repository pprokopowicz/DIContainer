import Quick
import Nimble
import DIContainer

final class NoArgumentsSpec: QuickSpec {
    
    // swiftlint:disable:next function_body_length
    override func spec() {
        describe("Container without arguments") {
            var sut: Container!
            
            beforeEach {
                sut = Container()
            }
            
            it("should resolve nil") {
                let character = sut.resolve(type: Character.self)
                expect(character).to(beNil())
            }
            
            it("should resolve nil when resolving Character") {
                sut.register(type: Smuggler.self) { _ in
                    Smuggler(name: "Han")
                }
                let character = sut.resolve(type: Character.self)
                expect(character).to(beNil())
            }
            
            it("should resolve nil when resolving Smuggler") {
                sut.register(type: Character.self) { _ in
                    Smuggler(name: "Han")
                }
                let character = sut.resolve(type: Smuggler.self)
                expect(character).to(beNil())
            }
            
            it("should resolve Smuggler") {
                let registeredSmuggler = Smuggler(name: "Han")
                sut.register(type: Character.self) { _ in
                    registeredSmuggler
                }
                let resolvedSmuggler = sut.resolve(type: Character.self)
                expect(resolvedSmuggler?.name).to(equal(registeredSmuggler.name))
            }
            
            it("should resolve 2 different instances of Jedi") {
                sut.register(type: Character.self) { _ in
                    Jedi(name: "Luke")
                }
                let firstInstance = sut.resolve(type: Character.self)
                let secondInstance = sut.resolve(type: Character.self)
                expect(firstInstance).toNot(beIdenticalTo(secondInstance))
            }
            
            it("should resolve Smuggler by name") {
                let registeredSmuggler = Smuggler(name: "Han")
                sut.register(type: Character.self, name: "Han") { _ in
                    registeredSmuggler
                }

                let han = sut.resolve(type: Character.self, name: "Han")
                expect(han?.name).to(equal(registeredSmuggler.name))
            }
            
            it("should resolve two different Smugglers by name") {
                sut.register(type: Character.self, name: "Han") { _ in
                    Smuggler(name: "Han")
                }
                sut.register(type: Character.self, name: "Lando") { _ in
                    Smuggler(name: "Lando")
                }
                
                let han = sut.resolve(type: Character.self, name: "Han")
                let lando = sut.resolve(type: Character.self, name: "Lando")
                expect(han?.name).toNot(equal(lando?.name))
            }
            
            it("should reslove one named Smuggler and one unnamed") {
                sut.register(type: Character.self, name: "Han") { _ in
                    Smuggler(name: "Han")
                }
                sut.register(type: Character.self) { _ in
                    Smuggler(name: "Unknown")
                }
                
                let han = sut.resolve(type: Character.self, name: "Han")
                let lando = sut.resolve(type: Character.self)
                expect(han?.name).toNot(equal(lando?.name))
            }
        }
    }
    
}
