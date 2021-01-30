//
//  HomeViewBanner.swift
//  SwiftUI_View_Learning
//
//  Created by Hung-Chun Tsai on 2021-01-29.
//

import SwiftUI

struct HomeViewBanner: View {
    let titleName: String = "ToDo"
    
    var body: some View {
        VStack{
            ZStack{
                CurvedSideRectangle(yOffSet: 50)
                    .fill(Color.assistColor)
                    .shadow(radius: 5)
                    .frame(height: 100)
                Text(titleName)
                    .tracking(15)
                    .myTitle()
            
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}


extension View{
    func myTitle() -> some View {
        self.modifier(Title())
    }
}
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.newPrimaryColor)
            .shadow(color: Color.newPrimaryColor.opacity(0.5), radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2)
            
    }
}


struct HomeViewBanner_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewBanner()
            .previewLayout(.sizeThatFits)
            .padding(50)
    }
}
