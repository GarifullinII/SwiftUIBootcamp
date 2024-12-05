//
//  ToolbarBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 05.12.2024.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths){
            ZStack {
                Color.white.ignoresSafeArea()
                
                ScrollView {
                    TextField("Placeholder", text: $text)
                    
//                    Text("Hey")
//                        .foregroundStyle(Color.white)
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 200, height: 200)
                    }
                }
            }
            /// Устаревший вариант
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear")
//            )
            .navigationTitle("Toolbar")
            /// Различные инструменты размещения!
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
            }
            .toolbar {
                ToolbarItem(
                    placement:
//                            .bottomBar
                    /// Размещение кнопки на панели клавиатуры!!!
//                        .keyboard
                    /// В центре
                        .principal
                ) {
                    Image(systemName: "gear")
                }
            }
            /// Можно скрыть панель
//            .toolbarVisibility(.hidden, for: .navigationBar)
            /// Можно скрыть фон панели
//            .toolbarBackground(.hidden, for: .navigationBar)
            /// Переключение панели навигации в темный режим
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            /// Меню в панели инструментов (выпадающее меню)
            .toolbarTitleMenu {
                Button {
                    paths.append("Screen one")
                } label: {
                    Text("Button")
                }

                Button {
                    paths.append("Screen two")
                } label: {
                    Text("Button next")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New screen: \(value)")
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
