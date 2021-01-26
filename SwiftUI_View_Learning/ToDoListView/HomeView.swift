//
//  Home.swift
//  SwiftUI_View_Learning
//
//  Created by Hung-Chun Tsai on 2021-01-24.
//

import SwiftUI

struct HomeView: View {
    
    
    @State var taskData: Task
    @State private var newTaskTitle: String = ""
    // MARK: - BODY
    
    var body: some View {
        
        
            
        ZStack {
            //:-Background Color
            LinearGradient(gradient: Gradient(colors: [Color("BackgroundColor"),Color("AssistColor")]), startPoint: .topLeading, endPoint: .bottomLeading)
            .ignoresSafeArea(edges: .all)
            
            //Banner
            VStack {
                BannerView()
                ScrollView {
                    LazyVStack {
                        ForEach(taskMockData) {item in
                            AddListRowView(textFieldData: $newTaskTitle)
                        }
                    }
                    .background(Color.clear)
                    .ignoresSafeArea(edges: .all)
                }

            }
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(taskData: taskMockData[1])
    }
}


