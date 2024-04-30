//
//  LoginViewModel.swift
//  InstagramTut1
//
//  Created by Aram on 29.04.24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
