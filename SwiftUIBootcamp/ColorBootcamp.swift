//
//  ColorBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 21.11.2024.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                /// Изменение цвета в зависимости от режима (светлый, темный)
                //                Color.primary
                /// Применение #colorLiteral()
                //                Color(#colorLiteral())
                //                Color(#colorLiteral(red: 0.005395144224, green: 0.7173972726, blue: 0.9883162379, alpha: 1))
                /// Добавление дополнительного системного цвета
                //                Color(UIColor.secondarySystemBackground)
                /// Добавление кастомного цвета через Assets
                Color(.custom)
            )
            .frame(width: 300, height: 200)
        /// Добавление тени
        //            .shadow(radius: 10)
        /// Добавление тени с изменением цвета, смещением и добавлением непрозрачности
            .shadow(color: Color(.custom).opacity(0.4), radius: 10, x: 20, y: 20)
        
    }
}

#Preview {
    ColorBootcamp()
}
