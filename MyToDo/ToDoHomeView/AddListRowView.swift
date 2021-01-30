//
//  ListRowView.swift
//  SwiftUI_View_Learning
//
//  Created by Hung-Chun Tsai on 2021-01-24.
//

import SwiftUI

struct AddListRowView: View {
    
    @Binding var textFieldData :String
    
    var body: some View {
            VStack {
                HStack {
                    Image(systemName: "plus")
                        .foregroundColor(.gray)
                        .font(Font.title.weight(.light))
                    TextField("Quick Add", text: self.$textFieldData)
                        .font(Font.title.weight(.regular))
                        .foregroundColor(.newPrimaryColor)
                        .multilineTextAlignment(.center)
                    Spacer()
                }//:- HStack
                Divider()
                    .frame(height: 1, alignment: .center)
            }//:- VStack
            .myListPaddingFormat()
    
    }
}

extension View{
    func myListPaddingFormat() -> some View {
        self.modifier(ListPaddingFormat())
    }
}

struct ListPaddingFormat: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.leading, UIScreen.main.bounds.width * 0.1)
            .padding(.trailing, UIScreen.main.bounds.width * 0.1)
            .padding(.vertical, UIScreen.main.bounds.width * 0.02)
    }
}



struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        AddListRowView(textFieldData: .constant(""))
            .previewLayout(.sizeThatFits)
    }
}
