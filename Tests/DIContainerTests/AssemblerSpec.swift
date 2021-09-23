import Quick
import Nimble
import DIContainer

final class AssemblerSpec: QuickSpec {
    // swiftlint:disable:next function_body_length
    override func spec() {
        describe("Assembler") {
            var sut: Assembler!
            var container: Container!
            var assemblies: [Assembly]!
            
            beforeEach {
                container = .init()
                assemblies = [FirstAssembly(), SecondAssembly()]
                sut = .init(container: container, assemblies: assemblies)
            }
            
            it("should resolve smuggler") {
                let smuggler = sut.resolver.resolve(type: Smuggler.self)
                expect(smuggler?.name).to(equal("Han"))
            }
            
            it("should resolve jedi") {
                let jedi = sut.resolver.resolve(type: Jedi.self)
                expect(jedi?.name).to(equal("Luke"))
            }
            
            it("should resolve both smuggler and jedi") {
                let smuggler = sut.resolver.resolve(type: Smuggler.self)
                let jedi = sut.resolver.resolve(type: Jedi.self)
                expect(smuggler?.name).to(equal("Han"))
                expect(jedi?.name).to(equal("Luke"))
            }
            
            it("should return proper resolver") {
                expect(container).to(beIdenticalTo(sut.resolver))
            }
        }
    }
}
