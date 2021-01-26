//
//  SegmentedControl_Custom.swift
//  SwiftUI_View_Learning
//
//  Created by Hung-Chun Tsai on 2021-01-26.
//

import SwiftUI

struct SegmentedControl_Custom: View {
    
    // MARK: - PROPERTIES
    
    @State private var selection = 2
    
    @State private var favoriteColor = 0
    var colors = ["Red", "Green", "Blue"]
    
    var body: some View {
        
        VStack(spacing: 10) {
            MyHeaderView("SegmentedControl", subtitle: "Customize the Picker", desc: "The picker also can modify the Color, Background and Shadow")

            Picker(selection: $favoriteColor, label: Text("What is your favorite color?")) {
                ForEach(0..<colors.count) { index in
                    Text(self.colors[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            Text("Notice: If we add the background it will let the corner radius disappear.")
            Picker(selection: $favoriteColor, label: Text("What is your favorite color?")) {
                ForEach(0..<colors.count) { index in
                    Text(self.colors[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .background(Color.yellow)
            .padding()
            
            Text("Solution: To add the cornerRadius variable to the Picker")
            
            Picker(selection: $favoriteColor, label: Text("What is your favorite color?")) {
                ForEach(0..<colors.count) { index in
                    Text(self.colors[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .background(Color.yellow)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ )
            .cornerRadius(5)
            .padding()
            
            Text("Value: \(colors[favoriteColor])")
        }
    }
}

struct SegmentedControl_Custom_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl_Custom()
    }
}
