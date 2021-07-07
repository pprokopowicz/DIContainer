//
//  TodosView.swift
//  Example
//
//  Created by Piotr Prokopowicz on 07/07/2021.
//

import SwiftUI

struct TodosView<ViewModel: TodosViewModelProtocol>: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            List(viewModel.todos, id: \.id) { todo in
                Text(todo.title)
            }
            
            Button("Fetch todos") {
                viewModel.fetchData()
            }.padding()
        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodosView(viewModel: TodosViewModel(dataSource: TodosDataSourceMock()))
    }
}
