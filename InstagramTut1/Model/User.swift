//
//  User.swift
//  InstagramTut1
//
//  Created by Aram on 27.04.24.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: "batman-1", fullname: "Bruce Wayne", bio: "Goyham's Dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "venom", profileImageUrl: "venom-1", fullname: "Eddie Brock", bio: "Venom", email: "venom@gmail.com"),
        .init(id: NSUUID().uuidString, username: "ironman", profileImageUrl: "ironman-1", fullname: "Tony Stark", bio: "Playboy & Billionaire", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "blackpanther", profileImageUrl: "black-panther-1", fullname: "Bruce Wayne", bio: "Wakanda Forever", email: "blackpanther@gmail.com"),
        .init(id: NSUUID().uuidString, username: "spiderman", profileImageUrl: "spiderman-1", fullname: "Peter Parker", bio: "Test Bio", email: "spiderman@gmail.com")
    ]
}
