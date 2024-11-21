//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 21.11.2024.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //        Circle()
        /// Изменяет цвет заливки фигуры
        //            .fill(Color.yellow)
        /// Изменяет цвет заливки фигуры
        //            .foregroundStyle(Color.blue)
        /// Добавление обводки и изменение цвета и стиля обводки для фигуры
        //            .stroke()
        //            .stroke(Color.red)
        //            .stroke(Color.blue, lineWidth: 30)
        //            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
        /// Обрезка фигуры
        //            .trim(from: 0.2, to: 1.0)
        //            .stroke(Color.purple, lineWidth: 50)
        //                Ellipse()
//        Capsule(style: .continuous)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
            .trim(from: 0.4, to: 1.0)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ShapesBootcamp()
}
