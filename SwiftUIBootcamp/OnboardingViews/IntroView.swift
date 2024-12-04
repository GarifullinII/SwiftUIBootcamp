//
//  IntroView.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 04.12.2024.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // background
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
            .ignoresSafeArea()
            
            /// Если пользователь вошел в систему, показываю его профиль
            if currentUserSignedIn {
                ProfileView()
                    .transition(
                        .asymmetric(
                            insertion: .move(edge: .bottom),
                            removal: .move(edge: .top)
                        )
                    )
            } else {
                OnboardingView()
                    .transition(
                        .asymmetric(
                            insertion: .move(edge: .top),
                            removal: .move(edge: .bottom)
                        )
                    )
            }
        }
    }
}

#Preview {
    IntroView()
}
