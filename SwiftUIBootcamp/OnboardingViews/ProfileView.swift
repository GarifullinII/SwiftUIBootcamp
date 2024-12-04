//
//  ProfileView.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 04.12.2024.
//

import SwiftUI

struct ProfileView: View {

    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            if let nameUser = currentUserName, let ageUser = currentUserAge, let genderUser = currentUserGender {
                    Text("Your name is \(nameUser)")
                    Text("This user is \(ageUser) years old!")
                    Text("Their gender is \(genderUser)")
                
                Text("Sign Out")
                    .foregroundStyle(Color.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .clipShape(.rect(cornerRadius: 10))
                    .onTapGesture {
                        signOut()
                    }
            }
        }
        .font(.title)
        .padding()
        .padding(.vertical, 40)
        .background(
            RadialGradient(
                gradient: Gradient(
                    colors: [
                        Color.green,
                        Color.blue,
                        Color.yellow,
                    ]
                ),
                center: .center,
                startRadius: 5,
                endRadius: 300
            )
        )
        .clipShape(.rect(cornerRadius: 10))
        .shadow(radius: 10)
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation {
            currentUserSignedIn = false
        }
    }
}

#Preview {
    ProfileView()
}
