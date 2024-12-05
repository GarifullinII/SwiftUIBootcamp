//
//  ViewThatFitsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 05.12.2024.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            /// Выбирает то, что может поместиться на экране
            /// По порядку приоритета
            /// Пытается уместиться в одну строку
            /// Для заголовков, где нельзя менять текст, но он длинный
            ViewThatFits {
                Text("This is some text that I would like to display to the user!")
                Text("This is some text that I would like to display!")
                Text("This is some text!")
            }
            
            Text("This is some text that I would like to display to the user!")
//                .lineLimit(1)
//                .minimumScaleFactor(0.3)
        }
        .frame(height: 300)
        .padding(16)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
