//
//  TaskRowView.swift
//  SwiftUI_View_Learning
//
//  Created by Hung-Chun Tsai on 2021-01-29.
//

import SwiftUI

struct TaskRowView: View {
    
    @State var task: Task
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.gray)
                    .font(Font.title.weight(.light))
                TextField("The Task Name", text: self.$task.title)
                    .font(Font.title.weight(.regular))
                    .foregroundColor(.newPrimaryColor)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, maxHeight: 30)
                    .disabled(true)
                Image(systemName: "slider.horizontal.3").foregroundColor(.SpotColor)
            }
            Divider()
                .frame(height: 1, alignment: .center)        }
        .myListPaddingFormat()
    }
}

struct TaskRowView_Previews: PreviewProvider {
    static var previews: some View {
        TaskRowView(task: taskMockData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
