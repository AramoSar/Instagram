//
//  CreateUsernameView.swift
//  InstagramTut1
//
//  Created by Aram on 27.04.24.
//

import SwiftUI

struct CreateUsernameView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        VStack {
            Text("Add your username")
                .font(.title2)
                .fontWeight(.bold)
            
            Text("Pick a username for your new account. You can always change it later")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .foregroundStyle(.gray)
                .padding(.horizontal, 24)
            
            TextField("Username...", text: $viewModel.username)
                .textInputAutocapitalization(.none)
                .modifier(IGTextFieldModifier())
            
            NavigationLink {
                CreatePasswordView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    CreateUsernameView()
}
