//
//  Registrant.swift
//  
//
//  Created by Piotr Prokopowicz on 25/06/2021.
//

/// Protocol representing dependency injection registrant, which has the ability to add an instance based on given type and optional name to a container.
public protocol Registrant {
    
    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - name: Name of specific instance.
    ///   - factory: Closure that creates the instance of specified type with it's dependencies.
    func register<Service>(type: Service.Type, name: String?, factory: @escaping (Resolver) -> Service)
    
    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - factory: Closure that creates the instance of specified type with it's dependencies.
    func register<Service>(type: Service.Type, factory: @escaping (Resolver) -> Service)
    
    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - name: Name of specific instance.
    ///   - factory: Closure that creates the instance of specified type(based on passed argument) with it's dependencies.
    func register<Service, Arg0>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0) -> Service)
    
    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - factory: Closure that creates the instance of specified type(based on passed argument) with it's dependencies.
    func register<Service, Arg0>(type: Service.Type, factory: @escaping (Resolver, Arg0) -> Service)

    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - name: Name of specific instance.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1) -> Service)
    
    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1) -> Service)

    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - name: Name of specific instance.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1, Arg2>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1, Arg2) -> Service)
    
    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1, Arg2>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1, Arg2) -> Service)

    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - name: Name of specific instance.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1, Arg2, Arg3>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3) -> Service)
    
    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1, Arg2, Arg3>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3) -> Service)

    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - name: Name of specific instance.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4) -> Service)
    
    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4) -> Service)

    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - name: Name of specific instance.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5) -> Service)
    
    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5) -> Service)

    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - name: Name of specific instance.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6) -> Service)
    
    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6) -> Service)

    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - name: Name of specific instance.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7) -> Service)
    
    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7) -> Service)

    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - name: Name of specific instance.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8) -> Service)
    
    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8) -> Service)

    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - name: Name of specific instance.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9) -> Service)
    
    /// Add an instance for the specified type.
    /// - Parameters:
    ///   - type: Type of service to add.
    ///   - factory: Closure that creates the instance of specified type(based on passed arguments) with it's dependencies.
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9) -> Service)
}
