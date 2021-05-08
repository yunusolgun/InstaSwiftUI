//
//  CommentsView.swift
//  InstagramSwiftUITutorial
//
//  Created by yunus olgun on 1.05.2021.
//

import SwiftUI

struct CommentsView: View {
    @State var commentText = ""
    @ObservedObject var viewModel: CommentViewModel
    
    init(post: Post) {
        self.viewModel = CommentViewModel(post: post)
    }
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack(alignment: .leading, spacing:24) {
                    ForEach(viewModel.comments) { comment in
                        CommentsCell(comment: comment)
                    }
                }
            }.padding(.top)

            CustomInputView(inputText: $commentText, action: uploadComment)
        }
    }
    
    func uploadComment() {
        viewModel.uploadComment(commentText: commentText)
        commentText = ""
    }
}

