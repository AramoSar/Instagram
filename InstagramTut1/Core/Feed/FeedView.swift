//
//  FeedView.swift
//  InstagramTut1
//
//  Created by Aram on 26.04.24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(Post.MOCK_POSTS) { post in
                        FeedCell(post: post)
                    }
                    .padding(.top, 8)
                }
                .navigationTitle("Feed")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(.instagramLogoBlack)
                            .resizable()
                            .frame(width: 100, height: 32)
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "paperplane")
                            .imageScale(.large)
                        
                    }
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
