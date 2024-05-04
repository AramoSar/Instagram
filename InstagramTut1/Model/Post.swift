//
//  Post.swift
//  InstagramTut1
//
//  Created by Aram on 28.04.24.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
}


extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This is some test caption for now",
            likes: 123,
            imageUrl: "batman-1",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[0]
        ),
        
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                caption: "Wakanda Forever",
                likes: 104,
                imageUrl: "black-panther-1",
                timestamp: Timestamp(),
                user: User.MOCK_USERS[3]
            ),
        
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                caption: "Iron Man",
                likes: 12,
                imageUrl: "ironman-1",
                timestamp: Timestamp(),
                user: User.MOCK_USERS[2]
            ),
        
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                caption: "Venom is hungry. Time to eat",
                likes: 314,
                imageUrl: "venom-1",
                timestamp: Timestamp(),
                user: User.MOCK_USERS[1]
            ),
        
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                caption: "Spiderman is crazy",
                likes: 147,
                imageUrl: "spiderman-1",
                timestamp: Timestamp(),
                user: User.MOCK_USERS[4]
            )
    ]
}

