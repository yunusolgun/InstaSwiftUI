//
//  LazyView.swift
//  InstagramSwiftUITutorial
//
//  Created by yunus olgun on 5.05.2021.
//

import SwiftUI

struct LazyView<Content: View>: View {
    let build: () -> Content
    
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    var body: Content {
        build()
    }
}
