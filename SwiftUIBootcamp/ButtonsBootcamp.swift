//
//  ButtonsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 26.11.2024.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State private var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            /// Первый вариант реализации
            Button("Press me") {
                self.title = "Button pressed!"
            }
            
            
            /// Второй вариант реализации
            Button {
                self.title = "Button two is pressed"
            } label: {
                Text("Button".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .clipShape(.rect(cornerRadius: 10))
                            .shadow(radius: 10)
                    )
            }

            Button {
                self.title = "Button three is pressed"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(Color.orange)
                    }
            }
            
            Button {
                self.title = "Button finish is pressed"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(Color.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2)
                    )
            }


        }
    }
}

#Preview {
    ButtonsBootcamp()
}
