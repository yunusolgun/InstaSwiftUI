//
//  CustomInputView.swift
//  InstagramSwiftUITutorial
//
//  Created by yunus olgun on 1.05.2021.
//

import SwiftUI

struct CustomInputView: View {
    @Binding var inputText: String
    
    var action: () -> Void
    
    var body: some View {
        VStack{

            Rectangle()
                .foregroundColor(Color(.separator))
                .frame(width: UIScreen.main.bounds.width, height: 0.75)
                .padding(.bottom,8)
            
            HStack {
                TextField("Comment...", text: $inputText)
                    .textFieldStyle(PlainTextFieldStyle())
                    .frame(minHeight: 30)
                
                Button(action: action) {
                    Text("Send")
                        .bold()
                        .foregroundColor(.black)
                }
                
            }.padding(.horizontal)
        }.padding(.bottom,8)
    }
}

