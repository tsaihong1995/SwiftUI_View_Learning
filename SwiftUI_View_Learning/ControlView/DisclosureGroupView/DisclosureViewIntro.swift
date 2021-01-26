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
    
    var body: some View {
        
        VStack {
            MyHeaderView("DisclosureGroup", subtitle: "Basic Implementation", desc: "DisclosureGroup can let the user to expand or collapse views.")
        }
        
    }
}

struct DisclosureViewIntro_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureViewIntro()
    }
}
