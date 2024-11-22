//
//  ImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 22.11.2024.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("kite")
        /// Режим перевода под шаблон иконки, для изображения без фона! .renderingMode(.template) либо через assets - Render as -> Template Image
            .renderingMode(.template)
        /// Подгонка под рамку
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 500, height: 200)
            .foregroundStyle(Color.red)
//            .cornerRadius(150)
        /// Обрезка изображения под какую-либо фигуру
//            .clipShape(
//                /// Круг
//                Circle()
//            )
    }
}

#Preview {
    ImageBootcamp()
}
