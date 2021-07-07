//
//  TodosDataSourceScheme.swift
//  Example
//
//  Created by Piotr Prokopowicz on 07/07/2021.
//

import Foundation
import Combine

protocol TodosDataSourceScheme {
    
    func todos() -> AnyPublisher<[TodoModel], Error>
    
}
