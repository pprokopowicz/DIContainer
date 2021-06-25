//
//  ServiceEntry.swift
//  
//
//  Created by Piotr Prokopowicz on 25/06/2021.
//

public typealias FunctionType = Any

protocol ServiceEntryProtocol: AnyObject {
    var factory: FunctionType { get }
    var serviceType: Any.Type { get }
}

public final class ServiceEntry<Service>: ServiceEntryProtocol {
    let factory: FunctionType
    let serviceType: Any.Type
    let argumentsType: Any.Type
    
    init(type: Service.Type, argumentsType: Any.Type, factory: FunctionType) {
        self.serviceType = type
        self.argumentsType = argumentsType
        self.factory = factory
    }
}
