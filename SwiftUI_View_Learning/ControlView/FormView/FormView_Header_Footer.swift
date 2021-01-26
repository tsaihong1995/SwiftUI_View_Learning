//
//  FormView_Header_Footer.swift
//  SwiftUI_View_Learning
//
//  Created by Hung-Chun Tsai on 2021-01-26.
//

import SwiftUI

struct FormView_Header_Footer: View {
    
    
    @State private var name: String = ""
    @State private var address: String = ""
    @State private var email: String = ""
    
    var body: some View {
        VStack(spacing:10) {
            MyHeaderView("Form With Header/Footer", subtitle: "Implement Header/Footer", desc: "Use the header/footer within the Form can add more information for user")
            Form {
                Section(header: Text("Your Information")) {
                    TextField("Customer Name", text: $name)
                    TextField("Email", text: $email)
                    TextField("Address", text: $address)
                }
                
                
                //:- The Header can implement the view
                //:- This example also show how to use the footer to the Section
                Section(header: SectionHeaderText(title: "Customize Header", image: "pencil"), footer: Text("The footer Text go here")) {
                    Text("Here is an example of a section footer")
                }
                
            }
            
        }
    }
}

struct SectionHeaderText: View {
    
    var title: String
    var image: String
    
    var body: some View {
        HStack {
            Image(systemName: image).padding(.trailing)
            Text(title)
        }
        .padding(3)
        .font(.title2)
        .foregroundColor(.accentColor)
    }
    
}

struct FormView_Header_Footer_Previews: PreviewProvider {
    static var previews: some View {
        FormView_Header_Footer()
    }
}
