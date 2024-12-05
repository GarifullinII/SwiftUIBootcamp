//
//  SafeAreaInsetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 05.12.2024.
//

import SwiftUI

struct SafeAreaInsetsBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
            /// Закрепление заголовка вверху
            .navigationBarTitleDisplayMode(.inline)
//            .overlay(
//                Text("Hello")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//                , alignment: .bottom
//            )
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
//                    .padding()
                    .background(Color.yellow)
//                    .clipShape(Circle())
//                    .padding()
            }
            .safeAreaInset(edge: .bottom, alignment: .leading, spacing: nil) {
                Text("Hi")
//                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetsBootcamp()
}
