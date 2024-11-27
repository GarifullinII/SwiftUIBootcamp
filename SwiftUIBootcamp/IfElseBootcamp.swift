//
//  IfElseBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 27.11.2024.
//

import SwiftUI

struct IfElseBootcamp: View {
    
    @State var isLoading: Bool = false
    
//    @State var showCircle: Bool = false
//    @State var showRectangle: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Is loading: \(isLoading)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            } else {
                /// Если загрузка завершена, что-то выполнить
            }
            
//            Button("Circle Button: \(showCircle.description)") {
//                /// функция переключения переменной между значениями true и false .toggle()
//                showCircle.toggle()
//            }
//            
//            Button("Rectangle Button: \(showRectangle.description)") {
//                /// функция переключения переменной между значениями true и false .toggle()
//                showRectangle.toggle()
//            }
//            
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//            
////            if !showCircle && !showRectangle {
////                RoundedRectangle(cornerRadius: 25)
////                    .frame(width: 200, height: 100)
////            }
//            
//            if showCircle || showRectangle {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 200, height: 100)
//            }
//            
//            Spacer()
        }
    }
}

#Preview {
    IfElseBootcamp()
}
