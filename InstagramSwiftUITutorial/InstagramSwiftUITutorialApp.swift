//
//  InstagramSwiftUITutorialApp.swift
//  InstagramSwiftUITutorial
//
//  Created by yunus olgun on 10.04.2021.
//

import SwiftUI
import Firebase

@main
struct InstagramSwiftUITutorialApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
