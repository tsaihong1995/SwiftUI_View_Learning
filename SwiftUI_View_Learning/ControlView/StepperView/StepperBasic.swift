//
//  StepperBasic.swift
//  SwiftUI_View_Learning
//
//  Created by Hung-Chun Tsai on 2021-01-27.
//

import SwiftUI

struct StepperBasic: View {
    
    // MARK: - PROPERTIES
    
    @State private var stepperValue = 1
    
    var body: some View {
        VStack(spacing: 10){
            MyHeaderView("The Stepper Intro", subtitle: "The componment increase steady", desc: "The Stepper can let the user Increase/Decrease by certain numberic")
            
            //The default stepper unit is 1 for the Decrease and Increase
            Stepper(value: $stepperValue) {
                Text("The Stepper Vaule is: \(stepperValue)")
                    .padding()
            }.padding(.horizontal)
            
            DescriptionView(desc: "Test")
        
        }
    }
}

struct DescriptionView: View {
    
    var desc = "Define the detail for this compoment."
    var textColor = Color.black
    var backGroundColor = Color.yellow
    
    
    var body: some View {
        Text("This is")
            .frame(maxWidth: .infinity)
            .padding()
            .background(backGroundColor)
            .foregroundColor(textColor)
            
    }
}

struct StepperBasic_Previews: PreviewProvider {
    static var previews: some View {
            DescriptionView()
                .previewLayout(.sizeThatFits)
                .padding()
        StepperBasic()
        
        
    }
}
