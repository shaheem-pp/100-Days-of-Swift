//
//  TodoListApp.swift
//  TodoList
//
//  Created by Shaheem PP on 13/09/23.
//

import FirebaseCore
import SwiftUI

@main
struct TodoListApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
