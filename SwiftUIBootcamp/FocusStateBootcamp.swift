//
//  FocusStateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 04.12.2024.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case userName
        case password
    }
    
//    @FocusState private var userNameInFocus: Bool
//    @FocusState private var passwordInFocus: Bool
    
    @State private var userName: String = ""
    @State private var password: String = ""
    
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack(spacing: 30) {
            TextField(
                "Add your name here...",
                text: $userName
            )
            .focused($fieldInFocus, equals: .userName)
//            .focused($userNameInFocus)
            .padding(.leading)
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .background(Color.gray.brightness(0.3))
            .clipShape(.rect(cornerRadius: 10))
            
            SecureField(
                "Add your password here...",
                text: $password
            )
            .focused($fieldInFocus, equals: .password)
//            .focused($passwordInFocus)
            .padding(.leading)
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .background(Color.gray.brightness(0.3))
            .clipShape(.rect(cornerRadius: 10))
            
            Button("Sign Up") {
                let userNameIsValid = !userName.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if userNameIsValid && passwordIsValid {
                    print("Sign Up")
                } else if userNameIsValid {
                    fieldInFocus = .password
//                    userNameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInFocus = .userName
//                    userNameInFocus = true
//                    passwordInFocus = false
                }
            }
            
//            Button("Toggle Focus State") {
//                userNameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//                self.userNameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateBootcamp()
}
