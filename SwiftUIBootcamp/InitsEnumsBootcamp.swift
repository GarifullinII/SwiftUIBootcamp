//
//  InitsEnumsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 25.11.2024.
//

import SwiftUI

struct InitsEnumsBootcamp: View {
    
    /// Инициализатор - функция для настройки представления
    let backgroundColor: Color
    let count: Int
    let title: String
    
    /// Инициализатор по умолчанию
    init(count: Int, fruit: Fruit
//         title: String
    ) {
        self.count = count
        
        if fruit == .apple {
            title = "Apples"
            backgroundColor = Color.green
        } else {
            title = "Oranges"
            backgroundColor = Color.purple
        }
        
//        self.title = title
//        
//        if title == "Apples" {
//            backgroundColor = Color.red
//        } else {
//            backgroundColor = Color.purple
//        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(Color.white)
                .underline()
            Text("\(title)")
                .font(.title)
                .foregroundStyle(Color.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    HStack {
        InitsEnumsBootcamp(count: 20, fruit: .apple)
        InitsEnumsBootcamp(count: 120, fruit: .orange)
    }
}
