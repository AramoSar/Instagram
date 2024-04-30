//
//  RegistrationViewModel.swift
//  InstagramTut1
//
//  Created by Aram on 29.04.24.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(withEmail: email, password: password, username: username)
    }
}
