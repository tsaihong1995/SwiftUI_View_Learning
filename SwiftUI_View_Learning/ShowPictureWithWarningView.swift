//
//  ShowPictureWithWarningView.swift
//  SwiftUI_View_Learning
//
//  Created by Hung-Chun Tsai on 2021-01-28.
//

import SwiftUI

struct ShowPictureWithWarningView: View {
    var body: some View {
        VStack{
            MyHeaderView("ViewModifier", subtitle: "Demonstrate how to use ViewModifier", desc: "Add one blur layer on the picture and use tap gesture to diable it.")
            Image("TestPic")
                .resizable()
                .scaledToFit()
                .nsfw()
        }
        
    }
}

extension View {
    func nsfw() -> some View {
        self.modifier(NSFW())
    }
}

struct NSFW: ViewModifier {
    @State var isHide: Bool = true
    
    func body(content: Content) -> some View {
        ZStack(alignment: .center, content: {
            if isHide {
                content
                    .blur(radius: 30).clipped()
                VStack {
                    Image(systemName: "eye.slash.fill").foregroundColor(.white)
                    Text("NSFW").font(.caption).bold().foregroundColor(.white)
                }
            } else {
                content
            }
        }).onTapGesture {
            withAnimation {
                self.isHide = !self.isHide
            }
        }
    }
}

struct ShowPictureWithWarningView_Previews: PreviewProvider {
    static var previews: some View {
        ShowPictureWithWarningView()
    }
}
