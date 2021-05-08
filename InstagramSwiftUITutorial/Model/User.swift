//
//  User.swift
//  InstagramSwiftUITutorial
//
//  Created by yunus olgun on 24.04.2021.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    let username : String
    let email : String
    let profileImageUrl: String
    let fullname: String
    @DocumentID var id: String?
    var bio: String?
    var stats: UserStats?
    var isFollowed: Bool? = false
    
    var isCurrentUser: Bool { return AuthViewModel.shared.userSession?.uid == id }
}


struct UserStats: Decodable {
    var following: Int
    var posts: Int
    var followers: Int
}
