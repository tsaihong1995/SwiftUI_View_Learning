//
//  UserData.swift
//  SwiftUI_View_Learning
//
//  Created by Hung-Chun Tsai on 2021-01-24.
//

import Foundation

struct Task {
    var title: String
    var location: String
    var done: Bool
    var created: Date()
}

let taskMockData: [Task] = [
    Task(
        title: "Task 1"
        location: "Home"
        done: false
    ),
    Task(
        title: "Task 2"
        location: "OutSide"
        done: true
    ),
    Task(
        title: "Task 3"
        location: "School"
        done: false
    )
]
