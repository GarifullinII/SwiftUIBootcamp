//
//  ButtonPropertyBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 04.12.2024.
//

import SwiftUI

struct ButtonPropertyBootcamp: View {
    var body: some View {
        VStack {
            Button {
                print("Button tupped")
            } label: {
                Text("Button")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            /// Форма границы кнопки
            .buttonBorderShape(
//                .capsule
                .roundedRectangle(radius: 20)
            )
            .controlSize(.large)
            
            Button("Button Title") {
                print("Button tapped")
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            /// Стиль можно изменять, адаптивный под режимы светлый или темный
            .buttonStyle(.plain)
            
            Button("Button Title") {
                print("Button tapped")
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            /// Размер элемента управления
            .controlSize(.large)
            .buttonStyle(.bordered)
            
            Button("Button Title") {
                print("Button tapped")
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.mini)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                print("Button tapped")
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            
        }
        .padding()
    }
}

#Preview {
    ButtonPropertyBootcamp()
}
