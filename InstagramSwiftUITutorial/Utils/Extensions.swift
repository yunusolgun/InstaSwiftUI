//
//  Extensions.swift
//  InstagramSwiftUITutorial
//
//  Created by yunus olgun on 18.04.2021.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
