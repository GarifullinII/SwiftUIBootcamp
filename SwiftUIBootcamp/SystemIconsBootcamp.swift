//
//  SystemIconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 22.11.2024.
//

import SwiftUI

struct SystemIconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
        /// Рендеринг изображения .original - изменение цвета на цвет из SF Pro Multicolor
            .renderingMode(.original)
        /// Добавление  размеров
//            .font(.largeTitle)
//            .font(.system(size: 50))
        /// Изменение цвета
//            .foregroundStyle(Color.green)
        /// Изменение размера иконки под размер рамки .resizable() + .frame()
            .resizable()
            /// Подгон изображения под рамку
//            .aspectRatio(contentMode: .fit)
            /// Масштабирование под рамку
//            .scaledToFit()
            .scaledToFill()
            .frame(width: 200, height: 200)
        /// Прикрепление изображения к рамке и его обрезка
//            .clipped()
    }
}

#Preview {
    SystemIconsBootcamp()
}
