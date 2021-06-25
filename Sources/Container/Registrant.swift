//
//  Registrant.swift
//  
//
//  Created by Piotr Prokopowicz on 25/06/2021.
//

public protocol Registrant {
    func register<Service>(type: Service.Type, name: String?, factory: @escaping (Resolver) -> Service)
    func register<Service>(type: Service.Type, factory: @escaping (Resolver) -> Service)
    
    func register<Service, Arg0>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0) -> Service)
    func register<Service, Arg0>(type: Service.Type, factory: @escaping (Resolver, Arg0) -> Service)

    func register<Service, Arg0, Arg1>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1) -> Service)
    func register<Service, Arg0, Arg1>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1) -> Service)

    func register<Service, Arg0, Arg1, Arg2>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1, Arg2) -> Service)
    func register<Service, Arg0, Arg1, Arg2>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1, Arg2) -> Service)

    func register<Service, Arg0, Arg1, Arg2, Arg3>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3) -> Service)
    func register<Service, Arg0, Arg1, Arg2, Arg3>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3) -> Service)

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4) -> Service)
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4) -> Service)

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5) -> Service)
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5) -> Service)

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6) -> Service)
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6) -> Service)

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7) -> Service)
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7) -> Service)

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8) -> Service)
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8) -> Service)

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(type: Service.Type, name: String?, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9) -> Service)
    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(type: Service.Type, factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9) -> Service)
}
