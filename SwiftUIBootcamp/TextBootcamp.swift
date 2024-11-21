//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 21.11.2024.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is the SwiftUI. I am really enjoying this course! This is the SwiftUI. I am really enjoying this course!".uppercased())
        /// Шрифт
        //            .font(.body)
        /// Вес шрифта
        //            .fontWeight(.heavy)
        /// Подчеркивание
        //            .underline()
        /// Курсив
        //            .italic()
        /// Зачеркнутый текст
        //            .strikethrough()
        /// Подчеркивание с цветом
        //            .underline(true, color: Color.red)
        /// Зачеркнутый текст с цветом
        //            .strikethrough(true, color: Color.green)
        /// Точный размер шрифта, автоматически не изменится при изменении настроек шрифта пользователем
        //            .font(.system(size: 24, weight: .semibold, design: .monospaced))
        /// Межстрочный интервал
        /// Порядок важен: .baselineOffset(10) далее .multilineTextAlignment(.trailing)
        //            .baselineOffset(10)
        /// "-" добавляет  интервал над первой строчкой  текста
        //            .baselineOffset(-10)
        /// Интервал между буквами
        //            .kerning(10)
        /// Многострочное выравнивание текста (по умолчанию по центру)
        //            .multilineTextAlignment(.trailing)
        /// Цвет шрифта
            .foregroundStyle(Color.red)
        /// Добавление рамки
            .frame(width: 200, height: 100, alignment: .center)
        /// Уменьшение размера шрифта, в зависимости от рамки (0.1 уменьшение на 10% от фактического размера шрифта)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootcamp()
}
