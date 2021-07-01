//
//  Container.swift
//  
//
//  Created by Piotr Prokopowicz on 25/06/2021.
//

public final class Container: DependencyContainer {
    
    // MARK: - Properties
    
    public static let shared: Container = Container()
    private var dependecies: [DependencyKey: ServiceEntryProtocol] = [:]
    
    // MARK: - Init
    
    public init() {}
    
    // MARK: - Registrant
    
    internal func baseRegister<Service, Arguments>(
        type: Service.Type,
        name: String? = nil,
        factory: @escaping (Arguments) -> Any
    ) {
        let dependencyKey = DependencyKey(type: type, name: name)
        dependecies[dependencyKey] = ServiceEntry(type: type, argumentsType: Arguments.self, factory: factory)
    }
    
    public func register<Service>(type: Service.Type, name: String?, factory: @escaping (Resolver) -> Service) {
        baseRegister(type: type, name: name, factory: factory)
    }
    
    public func register<Service>(type: Service.Type, factory: @escaping (Resolver) -> Service) {
        baseRegister(type: type, factory: factory)
    }
    
    // MARK: - Resolver
    
    internal func baseResolve<Service, Arguments>(
        name: String?,
        invoker: @escaping ((Arguments) -> Any) -> Any
    ) -> Service? {
        let dependencyKey = DependencyKey(type: Service.self, name: name)
        let entry = dependecies[dependencyKey]
        return resolve(entry: entry, invoker: invoker)
    }
    
    private func resolve<Service, Factory>(
            entry: ServiceEntryProtocol?,
            invoker: (Factory) -> Any
        ) -> Service? {
        guard let entry = entry, let factory = entry.factory as? Factory else { return nil }
        let resolvedInstance = invoker(factory)
        return resolvedInstance as? Service
    }
    
    public func resolve<Service>(type: Service.Type, name: String?) -> Service! {
        baseResolve(name: name) { (factory: (Resolver) -> Any) in factory(self) }
    }
    
    public func resolve<Service>(type: Service.Type) -> Service! {
        resolve(type: type, name: nil)
    }
    
    public func testMe() {
        print("IDK JUST GH ACTION TEST")
    }
    
}
