//
//  ContentUnavailableViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 05.12.2024.
//

import SwiftUI

/// Представление не доступного контента
/// Что-то не загрузилось и тд
struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        /// Стандартный интерфейс от Apple
//        ContentUnavailableView.search
        ContentUnavailableView.search(text: "Apple")
//        ContentUnavailableView(
//            "No Internet Connection",
//            systemImage: "wifi.slash",
//            description: Text("Please connect to the internet and tru again.")
//        )
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
