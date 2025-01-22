//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Dan June on 1/21/25.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
