//
//  AnimationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 27.11.2024.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button {
                /// Анимация по умолчанию
                withAnimation(
                    Animation
                        .default
                    /// Задержка
//                        .delay(1.5)
                    /// Повтор анимации
//                        .repeatCount(5, autoreverses: true)
//                        .repeatCount(5, autoreverses: false)
                    /// Повтор бесконечно
                        .repeatForever(autoreverses: true)
                ) {
                    isAnimated.toggle()
                }
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
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.green : Color.purple)
                .frame(
                    width: isAnimated ? 100 : 200,
                    height: isAnimated ? 100 : 200
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 0 : 200)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
