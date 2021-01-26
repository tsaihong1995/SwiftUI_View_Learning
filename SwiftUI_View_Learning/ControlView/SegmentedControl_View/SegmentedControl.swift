//
//  SegmentedControl.swift
//  SwiftUI_View_Learning
//
//  Created by Hung-Chun Tsai on 2021-01-26.
//

import SwiftUI

struct SegmentedControl: View {
    // MARK: - PROPERTIES
    
    @State private var quantities = "1"
    
    @State private var tab = 1
    
    var body: some View {
        
        VStack(spacing:20) {
            MyHeaderView("SegmentedControl", subtitle: "Basic Concept", desc: "Use the @State variable to control which segement will be selected. Tag will effect the value that set to the @State variable")
        
        //- Here the selection is related to the @State variable
        Picker("", selection: $quantities) {
                Text("1").tag("1")
                Text("2").tag("2")
        }
        .pickerStyle(SegmentedPickerStyle())
        .padding()
            
        //:- The picker with the Image
        Picker("", selection: $tab) {
            Image(systemName: "speaker.slash").tag(0)
            Image(systemName: "speaker.1").tag(1)
            Image(systemName: "speaker.3").tag(2)
        }
        .pickerStyle(SegmentedPickerStyle())
        .padding()
            
        }
    }
}

struct SegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl()
    }
}
