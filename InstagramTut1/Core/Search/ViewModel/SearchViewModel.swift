//
//  SearchViewModel.swift
//  InstagramTut1
//
//  Created by Aram on 02.05.24.
//

import Foundation

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchAllUsers() }
    }
    
    @MainActor
    func fetchAllUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
