//
//  FormViewIntro.swift
//  SwiftUI_View_Learning
//
//  Created by Hung-Chun Tsai on 2021-01-26.
//

import SwiftUI

struct FormViewIntro: View {
    var body: some View {
        VStack (spacing: 10) {
            MyHeaderView("Intro for Form", subtitle: "The basic form", desc: "We can consider the form is the list of text that with build-in divider for each row")
            
            Text("The form also come with a 'Build-in' scroll view if the contents exceed the height of the screen.")
                .padding()
            Form {
                Group {
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                }
                Group {
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                }
            }
            
            //:- If you want your form to look different when split its items into chunks, you should use the Section view instead. This splits your form into discrete visual groups, just like the Settings app does
            Form {
                Section {
                    Text("See how it will effect between each section")
                        .font(.title)
                }
                Section {
                    Text("Hello World")
                    Text("Hello World")
                }
            }
        }
    }
}

struct FormViewIntro_Previews: PreviewProvider {
    static var previews: some View {
        FormViewIntro()
    }
}
