//
//  Animation16Bootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 05.12.2024.
//

import SwiftUI

struct Animation16Bootcamp: View {
    
    @State private var animateOne: Bool = false
    @State private var animateTwo: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                Button("Action 1") {
                    animateOne.toggle()
                }
                
                Button("Action 2") {
                    animateTwo.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animateOne ? .leading : .trailing)
                        .background(Color.green)
                        .frame(maxHeight: .infinity, alignment: animateTwo ? .top : .bottom)
                        .background(Color.orange)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
            }
        }
        /// Анимация для одного и отключение ее для другого (отключается модификатор .spring())
        /// Применяется только при изменении значения
        .animation(.spring(), value: animateOne)
        .animation(.linear(duration: 2), value: animateTwo)
//        .animation(.spring())
    }
}

#Preview {
    Animation16Bootcamp()
}
