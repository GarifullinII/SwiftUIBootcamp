//
//  DataModelsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 03.12.2024.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct DataModelsBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Nick", userName: "nick22", followerCount: 43, isVerified: true),
        UserModel(displayName: "Emily", userName: "emily201", followerCount: 100, isVerified: true),
        UserModel(displayName: "Samantha", userName: "samantha123", followerCount: 254, isVerified: false),
        UserModel(displayName: "Chris", userName: "chris1991", followerCount: 200, isVerified: true)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                            Text("@\(user.userName)")
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(Color.blue)
                        } else {
                            Image(systemName: "checkmark.seal")
                                .foregroundStyle(Color.red)
                        }

                        VStack {
                            Text("\(user.followerCount)")
                            Text("followers")
                        }
                    }
                    .padding(.vertical, 10)
                }
                
                //                ForEach(users, id: \.self) { name in
                //                    HStack(spacing: 15.0) {
                //                        Circle()
                //                            .frame(width: 35, height: 35)
                //                        Text(name)
                //                    }
                //                    .padding(.vertical, 10)
                //                }
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    DataModelsBootcamp()
}
