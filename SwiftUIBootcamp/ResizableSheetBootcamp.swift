//
//  ResizableSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 05.12.2024.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MySecondView(detents: $detents)
            /// Привязка к точкам, программное переключение, между разными размерами
                .presentationDetents([
                    .fraction(0.7),
                    .medium, .large
                ], selection: $detents
                )
            
            /// Задаем свой размер листа
            //                .presentationDetents([
            //                    .fraction(0.1), .medium, .large
            //                ])
            
            /// Задаем свой размер листа по высоте (подбор в зависимости от размера экрана! Плохо!)
            //                .presentationDetents([
            //                    .height(500)
            //                ])
            
            //                .presentationDetents([
            //                    /// На весь экран
            //                    //                    .large
            //                    /// На половину экрана
            //                    //                    .medium
            //                    /// Можно добавить оба свойства и можно перетаскивать лист между ними, без нельзя (появляется индикатор перетаскивания
            //                    .medium, .large
            //                ])
            
            /// Можно скрыть индикатор перетаскивания (можно нарисовать свой)
            //                .presentationDragIndicator(.hidden)
            
            /// Можно запретить смахивание, до совершения какого-то действия (например пока пользователь не оплатит подписку, просмотрит всю рекламу до конца)
            /// Зафиксировать лист
            //                .interactiveDismissDisabled()
        }
        //        .onAppear {
        //            showSheet = true
        //        }
    }
}

struct MySecondView: View {
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            VStack(spacing: 20) {
                /// Программное переключение между различными режимами
                /// Следует помнить, чтобы используемые значения были добавлены в .presentationDetents([.fraction(0.7), .medium,  .large], selection: $detents)
                Button("Medium") {
                    detents = .medium
                }
                
                Button("Large") {
                    detents = .large
                }
                
                Button("Fraction") {
                    detents = .fraction(0.7)
                }
            }
        }
    }
}

#Preview {
    ResizableSheetBootcamp()
}
