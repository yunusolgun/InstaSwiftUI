//
//  CommentsCell.swift
//  InstagramSwiftUITutorial
//
//  Created by yunus olgun on 1.05.2021.
//

import SwiftUI
import Kingfisher

struct CommentsCell: View {
    let comment: Comment
    
    var body: some View {
        HStack {
            KFImage(URL(string: comment.profileImageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: 36, height: 36)
                .clipShape(Circle())
            
            Text(comment.username).font(.system(size: 14, weight: .semibold)) +
                Text(" \(comment.commentText)").font(.system(size: 14))
            
            Spacer()
            
            Text(comment.timestampString ?? "")
                .foregroundColor(.gray)
                .font(.system(size: 12))

        }.padding(.horizontal)
    }
}

