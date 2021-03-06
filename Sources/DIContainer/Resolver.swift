//
//  Resolver.swift
//  
//
//  Created by Piotr Prokopowicz on 25/06/2021.
//

/// Protocol representing dependency injection resolver, which has the ability to retieve an instance based on given type and optional name.
public protocol Resolver {
    
    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - name: Name of specific instance.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service>(type: Service.Type, name: String?) -> Service!
    
    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service>(type: Service.Type) -> Service!

    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - name: Name of specific instance.
    ///   - argument: Argument passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0>(type: Service.Type, name: String?, argument: Arg0) -> Service!
    
    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - argument: Argument passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0>(type: Service.Type, argument: Arg0) -> Service!
    
    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - name: Name of specific instance.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1>(type: Service.Type, name: String?, arguments argument0: Arg0, _ argument1: Arg1) -> Service!
    
    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1>(type: Service.Type, arguments argument0: Arg0, _ argument1: Arg1) -> Service!

    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - name: Name of specific instance.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1, Arg2>(type: Service.Type, name: String?, arguments argument0: Arg0, _ argument1: Arg1, _ argument2: Arg2) -> Service!
    
    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1, Arg2>(type: Service.Type, arguments argument0: Arg0, _ argument1: Arg1, _ argument2: Arg2) -> Service!

    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - name: Name of specific instance.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1, Arg2, Arg3>(type: Service.Type, name: String?, arguments argument0: Arg0, _ argument1: Arg1, _ argument2: Arg2, _ argument3: Arg3) -> Service!
    
    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1, Arg2, Arg3>(type: Service.Type, arguments argument0: Arg0, _ argument1: Arg1, _ argument2: Arg2, _ argument3: Arg3) -> Service!

    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - name: Name of specific instance.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4>(type: Service.Type, name: String?, arguments argument0: Arg0, _ argument1: Arg1, _ argument2: Arg2, _ argument3: Arg3, _ argument4: Arg4) -> Service!
    
    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4>(type: Service.Type, arguments argument0: Arg0, _ argument1: Arg1, _ argument2: Arg2, _ argument3: Arg3, _ argument4: Arg4) -> Service!

    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - name: Name of specific instance.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5>(type: Service.Type, name: String?, arguments argument0: Arg0, _ argument1: Arg1, _ argument2: Arg2, _ argument3: Arg3, _ argument4: Arg4, _ argument5: Arg5) -> Service!
    
    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - name: Name of specific instance.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5>(type: Service.Type, arguments argument0: Arg0, _ argument1: Arg1, _ argument2: Arg2, _ argument3: Arg3, _ argument4: Arg4, _ argument5: Arg5) -> Service!

    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - name: Name of specific instance.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(type: Service.Type, name: String?, arguments argument0: Arg0, _ argument1: Arg1, _ argument2: Arg2, _ argument3: Arg3, _ argument4: Arg4, _ argument5: Arg5, _ argument6: Arg6) -> Service!
    
    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - name: Name of specific instance.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(type: Service.Type, arguments argument0: Arg0, _ argument1: Arg1, _ argument2: Arg2, _ argument3: Arg3, _ argument4: Arg4, _ argument5: Arg5, _ argument6: Arg6) -> Service!

    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - name: Name of specific instance.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(type: Service.Type, name: String?, arguments argument0: Arg0, _ argument1: Arg1, _ argument2: Arg2, _ argument3: Arg3, _ argument4: Arg4, _ argument5: Arg5, _ argument6: Arg6, _ argument7: Arg7) -> Service!
    
    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - name: Name of specific instance.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(type: Service.Type, arguments argument0: Arg0, _ argument1: Arg1, _ argument2: Arg2, _ argument3: Arg3, _ argument4: Arg4, _ argument5: Arg5, _ argument6: Arg6, _ argument7: Arg7) -> Service!

    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - name: Name of specific instance.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(type: Service.Type, name: String?, arguments argument0: Arg0, _ argument1: Arg1, _ argument2: Arg2, _ argument3: Arg3, _ argument4: Arg4, _ argument5: Arg5, _ argument6: Arg6, _ argument7: Arg7, _ argument8: Arg8) -> Service!
    
    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - name: Name of specific instance.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(type: Service.Type, arguments argument0: Arg0, _ argument1: Arg1, _ argument2: Arg2, _ argument3: Arg3, _ argument4: Arg4, _ argument5: Arg5, _ argument6: Arg6, _ argument7: Arg7, _ argument8: Arg8) -> Service!

    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - name: Name of specific instance.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(type: Service.Type, name: String?, arguments argument0: Arg0, _ argument1: Arg1, _ argument2: Arg2, _ argument3: Arg3, _ argument4: Arg4, _ argument5: Arg5, _ argument6: Arg6, _ argument7: Arg7, _ argument8: Arg8, _ argument9: Arg9) -> Service!
    
    /// Retrieve an instance with specifed type.
    /// - Parameters:
    ///   - type: Type of service to retrieve.
    ///   - name: Name of specific instance.
    ///   - arguments: List of arguments passed to factory closure.
    /// - Returns: Retrieved instance or `nil`.
    func resolve<Service, Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(type: Service.Type, arguments argument0: Arg0, _ argument1: Arg1, _ argument2: Arg2, _ argument3: Arg3, _ argument4: Arg4, _ argument5: Arg5, _ argument6: Arg6, _ argument7: Arg7, _ argument8: Arg8, _ argument9: Arg9) -> Service!
}
