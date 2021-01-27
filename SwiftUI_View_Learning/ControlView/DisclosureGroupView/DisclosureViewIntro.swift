//
//  DisclosureViewIntro.swift
//  SwiftUI_View_Learning
//
//  Created by Hung-Chun Tsai on 2021-01-26.
//

import SwiftUI

struct DisclosureViewIntro: View {
    
    // MARK: - PROPERTIES
    
    @State private var disclosureIsOpened = false
    @State private var disclosure2IsOpened = false
    
    var body: some View {
        
        VStack {
            MyHeaderView("DisclosureGroup", subtitle: "Basic Implementation", desc: "DisclosureGroup can let the user to expand or collapse views.")
            
            VStack {
                DisclosureGroup("More Info", isExpanded: $disclosureIsOpened) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.orange)
                        .opacity(0.1)
                        .overlay(Text("More Info!"))
                        .frame(height: 200)
                }
                
                DisclosureGroup("Accent Color", isExpanded: $disclosure2IsOpened) {
                    Text("You can change the color of the chevron with the use of the accentColor modifier.")
                        .font(.title2)
                        .padding()
                }
                //:- AccentColor is the arrow's color
                .accentColor(.orange)
                .padding()
                //:- With this method we can let the whole RoundRectangle part is able to response user's tap gesture.
                .background(RoundedRectangle(cornerRadius: 20)
                                .fill(Color.green)
                                .opacity(0.1)
                                .onTapGesture {
                                    withAnimation {self.disclosure2IsOpened.toggle()}
                                    
                                })
            }
            .padding(.horizontal)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct DisclosureViewIntro_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureViewIntro()
    }
}
