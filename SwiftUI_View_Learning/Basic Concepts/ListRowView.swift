//
//  ListRowView.swift
//  SwiftUI_View_Learning
//
//  Created by Hung-Chun Tsai on 2021-01-24.
//

import SwiftUI

struct ListRowView: View {
    
    @Binding var textFieldData :String
    
    var body: some View {

            VStack {
                HStack {
                    Image(systemName: "plus")
                        .foregroundColor(.gray)
                        .font(Font.title.weight(.ultraLight))
                    TextField("Quick Add", text: self.$textFieldData)
                        .font(Font.title.weight(.thin))
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.center)
                    Image(systemName: "slider.horizontal.3").foregroundColor(Color("PimaryColor"))
                        
                }
                Divider()
                    .frame(height: 10, alignment: .center)
            }
            .padding(.leading, UIScreen.main.bounds.width * 0.1)
            .padding(.trailing, UIScreen.main.bounds.width * 0.1)
            .padding(.vertical, UIScreen.main.bounds.width * 0.05)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
    
    }
}


struct ListRowView_Previews: PreviewProvider {
    
    static var previews: some View {
        ListRowView(textFieldData: .constant("User Input"))
            .previewLayout(.sizeThatFits)
            .padding()
        ListRowView(textFieldData: .constant(""))
            .previewLayout(.sizeThatFits)
    }
}
