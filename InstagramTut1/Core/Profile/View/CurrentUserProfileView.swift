//
//  CurrentUserProfileView.swift
//  InstagramTut1
//
//  Created by Aram on 27.04.24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user: User
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // header 
                ProfileHeaderView(user: user)
                
                // post grid view
                
                
                PostGridView(user: user)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.black)
                    }
                }
            }
        }
        
    }
}

#Preview {
    CurrentUserProfileView(user: User.MOCK_USERS[3])
}
