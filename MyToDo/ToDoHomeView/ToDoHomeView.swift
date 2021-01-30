//
//  ToDoHomeView.swift
//  SwiftUI_View_Learning
//
//  Created by Hung-Chun Tsai on 2021-01-29.
//

import SwiftUI

struct ToDoHomeView: View {
    // MARK: - PROPERTIES
    
    @Binding var addTaskString: String
    
    var body: some View {
        VStack(spacing: 15){
            HomeViewBanner()
            AddListRowView(textFieldData: $addTaskString)
            LazyVStack {
                ForEach(taskMockData) {item in
                    TaskRowView(task: item)
                }
            }
            .background(Color.clear)
            .ignoresSafeArea(edges: .all)
            Spacer()
        }
    }
}

struct ToDoHomeView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        let userInput = ""
        
        ToDoHomeView(addTaskString: .constant(userInput))
    }
}
