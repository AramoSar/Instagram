//
//  ProfileHeaderView.swift
//  InstagramTut1
//
//  Created by Aram on 28.04.24.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    
    var body: some View {
        VStack(spacing: 10){
            
            // pic and stats
            HStack {
                Image(user.profileImageUrl ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing: 8) {
                    
                    UserStatView(value: 13, title: "Posts")
                    UserStatView(value: 24, title: "Followers")
                    UserStatView(value: 54, title: "Following")
                    
                    
                }
            }
            .padding(.horizontal)
            
            // name and bio
            VStack(alignment: .leading, spacing: 4) {
                
                if let fullname = user.fullname {
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            // action button
            Text("Edit Profile")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 32)
                .foregroundStyle(.black)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(.gray, lineWidth: 1)
                )
            
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
