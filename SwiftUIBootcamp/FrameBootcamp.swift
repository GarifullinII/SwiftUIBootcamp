//
//  FrameBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 22.11.2024.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        /// Frame - прямоугольная область в которой находится объект
        /// по умолчанию frame прозрачен
        /// по умолчанию frame подстраивается под размер содержимого
        /// можно накладывать frame друг на друга
        Text("Hello!")
//            .background(Color.green)
        /// Задаем размер frame
//            .frame(width: 300, height: 300, alignment: .topLeading)
        /// Растягивание рамки по размеру экрана
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//                    .background(Color.red)
            .background(Color.red)
            .frame(height: 100)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
        /// Рамка для соответствующего цвета
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
        
        
        
        
    }
}

#Preview {
    FrameBootcamp()
}
