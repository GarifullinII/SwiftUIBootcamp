//
//  DarkModeBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 02.12.2024.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    /// Цвета адаптивные
                    Text("This color is Primary")
                        .foregroundStyle(Color.primary)
                    Text("This color is Secondary")
                        .foregroundStyle(Color.secondary)
                    /// Нет адаптации
                    Text("This color is Black")
                        .foregroundStyle(Color.black)
                    Text("This color is White")
                        .foregroundStyle(Color.white)
                    /// Будет виден при разных режимах
                    Text("This color is Red")
                        .foregroundStyle(Color.red)
                    /// Создаем свой цвет в assets и задаем требуемые цвета для режимов
                    Text("This color is globally adaptive!")
                        .foregroundStyle(Color.new)
                    /// Создаем свой цвет через @Environment
                    Text("This color is locally adaptive!")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark mode")
        }
    }
}

#Preview {
    DarkModeBootcamp()
        .preferredColorScheme(.light)
}

#Preview {
    DarkModeBootcamp()
        .preferredColorScheme(.dark)
}
