//
//  ZStackConcept.swift
//  SwiftUI_View_Learning
//
//  Created by Hung-Chun Tsai on 2021-01-02.
//

import SwiftUI

struct ZStackConcept: View {
    var body: some View {
        GeometryReader { gr in
            
            //ZStack is also called Depth Stack, and the stack view will organize your views so they are one on top of another.
            
            //1. In this ZStack which contain 3 Rounded Rectangle and the orders are 'Orange' -> 'Red' -> 'Yellow'
            ZStack {
                ZStack (alignment : .topLeading) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.orange)
                        .frame(width: gr.size.width - 120, height: gr.size.height - 270)
                    Text("Bottom Layer")
                        .offset(x: 20, y: 10)
                        .font(.title2)
                }
                .offset(x: -40, y: -40)
                
                ZStack (alignment : .topLeading){
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.red)
                        .shadow(radius: 8)
                        .frame(width: gr.size.width - 120, height: gr.size.height - 270)
                    Text("Middle layer")
                        .offset(x: 20, y: 10)
                        .font(.title2)
                }

                ZStack (alignment : .topLeading){
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.yellow)
                        .shadow(radius: 8)
                        .frame(width: gr.size.width - 120, height: gr.size.height - 270)
                    Text("Topper layer")
                        .offset(x: 20, y: 10)
                        .font(.title2)
                    Text("Carter, Tsai")
                        .offset(x: 60, y:gr.size.height/4)
                        .multilineTextAlignment(.center)
                        .font(.title)

                }
                .offset(x: 40, y: 40)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 2))
            .padding(10)
        }
    }
}

struct ZStackConcept_Previews: PreviewProvider {
    static var previews: some View {
        ZStackConcept()
    }
}
