//
//  Container+Arguments.swift
//  
//
//  Created by Piotr Prokopowicz on 25/06/2021.
//

public extension Container {
    
    func register<Service, Arg0>(
        type: Service.Type,
        name: String?,
        factory: @escaping (Resolver, Arg0) -> Service
    ) {
        _register(type: type, name: name, factory: factory)
    }

    func register<Service, Arg0>(
        type: Service.Type,
        factory: @escaping (Resolver, Arg0) -> Service
    ) {
        _register(type: type, factory: factory)
    }

    func register<Service, Arg0, Arg1>(
        type: Service.Type,
        name: String?,
        factory: @escaping (Resolver, Arg0, Arg1) -> Service
    ) {
        _register(type: type, name: name, factory: factory)
    }

    func register<Service, Arg0, Arg1>(
        type: Service.Type,
        factory: @escaping (Resolver, Arg0, Arg1) -> Service
    ) {
        _register(type: type, factory: factory)
    }

    func register<Service, Arg0, Arg1, Arg2>(
        type: Service.Type,
        name: String?,
        factory: @escaping (Resolver, Arg0, Arg1, Arg2) -> Service
    ) {
        _register(type: type, name: name, factory: factory)
    }

    func register<Service, Arg0, Arg1, Arg2>(
        type: Service.Type,
        factory: @escaping (Resolver, Arg0, Arg1, Arg2) -> Service
    ) {
        _register(type: type, factory: factory)
    }

    func register<Service, Arg0, Arg1, Arg2, Arg3>(
        type: Service.Type,
        name: String?,
        factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3) -> Service
    ) {
        _register(type: type, name: name, factory: factory)
    }

    func register<Service, Arg0, Arg1, Arg2, Arg3>(
        type: Service.Type,
        factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3) -> Service
    ) {
        _register(type: type, factory: factory)
    }

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4>(
        type: Service.Type,
        name: String?,
        factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4) -> Service
    ) {
        _register(type: type, name: name, factory: factory)
    }

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4>(
        type: Service.Type,
        factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4) -> Service
    ) {
        _register(type: type, factory: factory)
    }

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5>(
        type: Service.Type,
        name: String?,
        factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5) -> Service
    ) {
        _register(type: type, name: name, factory: factory)
    }

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5>(
        type: Service.Type,
        factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5) -> Service
    ) {
        _register(type: type, factory: factory)
    }

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        type: Service.Type,
        name: String?,
        factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6) -> Service
    ) {
        _register(type: type, name: name, factory: factory)
    }

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        type: Service.Type,
        factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6) -> Service
    ) {
        _register(type: type, factory: factory)
    }

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        type: Service.Type,
        name: String?,
        factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7) -> Service
    ) {
        _register(type: type, name: name, factory: factory)
    }

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        type: Service.Type,
        factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7) -> Service
    ) {
        _register(type: type, factory: factory)
    }

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        type: Service.Type,
        name: String?,
        factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8) -> Service
    ) {
        _register(type: type, name: name, factory: factory)
    }

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        type: Service.Type,
        factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8) -> Service
    ) {
        _register(type: type, factory: factory)
    }

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        type: Service.Type,
        name: String?,
        factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9) -> Service
    ) {
        _register(type: type, name: name, factory: factory)
    }

    func register<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        type: Service.Type,
        factory: @escaping (Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9) -> Service
    ) {
        _register(type: type, factory: factory)
    }
    
    func resolve<Service, Arg0>(
        type: Service.Type,
        name: String?,
        argument: Arg0
    ) -> Service! {
        typealias FactoryType = ((Resolver, Arg0)) -> Any
        return _resolve(name: name) { (factory: FactoryType) in factory((self, argument)) }
    }
    
    func resolve<Service, Arg0>(
        type: Service.Type,
        argument: Arg0
    ) -> Service! {
        resolve(type: type, name: nil, argument: argument)
    }

    func resolve<Service, Arg0, Arg1>(
        type: Service.Type,
        name: String?,
        arguments argument0: Arg0,
        _ argument1: Arg1
    ) -> Service! {
        typealias FactoryType = ((Resolver, Arg0, Arg1)) -> Any
        return _resolve(name: name) { (factory: FactoryType) in factory((self, argument0, argument1)) }
    }

    func resolve<Service, Arg0, Arg1>(
        type: Service.Type,
        arguments argument0: Arg0,
        _ argument1: Arg1
    ) -> Service! {
        resolve(type: type, name: nil, arguments: argument0, argument1)
    }

    func resolve<Service, Arg0, Arg1, Arg2>(
        type: Service.Type,
        name: String?,
        arguments argument0: Arg0,
        _ argument1: Arg1,
        _ argument2: Arg2
    ) -> Service! {
        typealias FactoryType = ((Resolver, Arg0, Arg1, Arg2)) -> Any
        return _resolve(name: name) { (factory: FactoryType) in factory((self, argument0, argument1, argument2)) }
    }

    func resolve<Service, Arg0, Arg1, Arg2>(
        type: Service.Type,
        arguments argument0: Arg0,
        _ argument1: Arg1,
        _ argument2: Arg2
    ) -> Service! {
        resolve(type: type, name: nil, arguments: argument0, argument1, argument2)
    }

    func resolve<Service, Arg0, Arg1, Arg2, Arg3>(
        type: Service.Type,
        name: String?,
        arguments argument0: Arg0,
        _ argument1: Arg1,
        _ argument2: Arg2,
        _ argument3: Arg3
    ) -> Service! {
        typealias FactoryType = ((Resolver, Arg0, Arg1, Arg2, Arg3)) -> Any
        return _resolve(name: name) { (factory: FactoryType) in factory((self, argument0, argument1, argument2, argument3)) }
    }

    func resolve<Service, Arg0, Arg1, Arg2, Arg3>(
        type: Service.Type,
        arguments argument0: Arg0,
        _ argument1: Arg1,
        _ argument2: Arg2,
        _ argument3: Arg3
    ) -> Service! {
        resolve(type: type, name: nil, arguments: argument0, argument1, argument2, argument3)
    }

    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4>(
        type: Service.Type,
        name: String?,
        arguments argument0: Arg0,
        _ argument1: Arg1,
        _ argument2: Arg2,
        _ argument3: Arg3,
        _ argument4: Arg4
    ) -> Service! {
        typealias FactoryType = ((Resolver, Arg0, Arg1, Arg2, Arg3, Arg4)) -> Any
        return _resolve(name: name) { (factory: FactoryType) in factory((self, argument0, argument1, argument2, argument3, argument4)) }
    }

    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4>(
        type: Service.Type,
        arguments argument0: Arg0,
        _ argument1: Arg1,
        _ argument2: Arg2,
        _ argument3: Arg3,
        _ argument4: Arg4
    ) -> Service! {
        resolve(type: type, name: nil, arguments: argument0, argument1, argument2, argument3, argument4)
    }

    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5>(
        type: Service.Type,
        name: String?,
        arguments argument0: Arg0,
        _ argument1: Arg1,
        _ argument2: Arg2,
        _ argument3: Arg3,
        _ argument4: Arg4,
        _ argument5: Arg5
    ) -> Service! {
        typealias FactoryType = ((Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5)) -> Any
        return _resolve(name: name) { (factory: FactoryType) in factory((self, argument0, argument1, argument2, argument3, argument4, argument5)) }
    }

    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5>(
        type: Service.Type,
        arguments argument0: Arg0,
        _ argument1: Arg1,
        _ argument2: Arg2,
        _ argument3: Arg3,
        _ argument4: Arg4,
        _ argument5: Arg5
    ) -> Service! {
        resolve(type: type, name: nil, arguments: argument0, argument1, argument2, argument3, argument4, argument5)
    }

    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        type: Service.Type,
        name: String?,
        arguments argument0: Arg0,
        _ argument1: Arg1,
        _ argument2: Arg2,
        _ argument3: Arg3,
        _ argument4: Arg4,
        _ argument5: Arg5,
        _ argument6: Arg6
    ) -> Service! {
        typealias FactoryType = ((Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6)) -> Any
        return _resolve(name: name) { (factory: FactoryType) in factory((self, argument0, argument1, argument2, argument3, argument4, argument5, argument6)) }
    }

    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        type: Service.Type,
        arguments argument0: Arg0,
        _ argument1: Arg1,
        _ argument2: Arg2,
        _ argument3: Arg3,
        _ argument4: Arg4,
        _ argument5: Arg5,
        _ argument6: Arg6
    ) -> Service! {
        resolve(type: type, name: nil, arguments: argument0, argument1, argument2, argument3, argument4, argument5, argument6)
    }

    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        type: Service.Type,
        name: String?,
        arguments argument0: Arg0,
        _ argument1: Arg1,
        _ argument2: Arg2,
        _ argument3: Arg3,
        _ argument4: Arg4,
        _ argument5: Arg5,
        _ argument6: Arg6,
        _ argument7: Arg7
    ) -> Service! {
        typealias FactoryType = ((Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7)) -> Any
        return _resolve(name: name) { (factory: FactoryType) in factory((self, argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7)) }
    }

    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        type: Service.Type,
        arguments argument0: Arg0,
        _ argument1: Arg1,
        _ argument2: Arg2,
        _ argument3: Arg3,
        _ argument4: Arg4,
        _ argument5: Arg5,
        _ argument6: Arg6,
        _ argument7: Arg7
    ) -> Service! {
        resolve(type: type, name: nil, arguments: argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7)
    }

    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        type: Service.Type,
        name: String?,
        arguments argument0: Arg0,
        _ argument1: Arg1,
        _ argument2: Arg2,
        _ argument3: Arg3,
        _ argument4: Arg4,
        _ argument5: Arg5,
        _ argument6: Arg6,
        _ argument7: Arg7,
        _ argument8: Arg8
    ) -> Service! {
        typealias FactoryType = ((Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8)) -> Any
        return _resolve(name: name) { (factory: FactoryType) in factory((self, argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8)) }
    }

    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        type: Service.Type,
        arguments argument0: Arg0,
        _ argument1: Arg1,
        _ argument2: Arg2,
        _ argument3: Arg3,
        _ argument4: Arg4,
        _ argument5: Arg5,
        _ argument6: Arg6,
        _ argument7: Arg7,
        _ argument8: Arg8
    ) -> Service! {
        resolve(type: type, name: nil, arguments: argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8)
    }

    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        type: Service.Type,
        name: String?,
        arguments argument0: Arg0,
        _ argument1: Arg1,
        _ argument2: Arg2,
        _ argument3: Arg3,
        _ argument4: Arg4,
        _ argument5: Arg5,
        _ argument6: Arg6,
        _ argument7: Arg7,
        _ argument8: Arg8,
        _ argument9: Arg9
    ) -> Service! {
        typealias FactoryType = ((Resolver, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9)) -> Any
        return _resolve(name: name) { (factory: FactoryType) in factory((self, argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9)) }
    }

    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        type: Service.Type,
        arguments argument0: Arg0,
        _ argument1: Arg1,
        _ argument2: Arg2,
        _ argument3: Arg3,
        _ argument4: Arg4,
        _ argument5: Arg5,
        _ argument6: Arg6,
        _ argument7: Arg7,
        _ argument8: Arg8,
        _ argument9: Arg9
    ) -> Service! {
        resolve(type: type, name: nil, arguments: argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9)
    }

}
