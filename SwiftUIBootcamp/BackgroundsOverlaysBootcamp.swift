//
//  BackgroundsOverlaysBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 22.11.2024.
//

import SwiftUI

struct BackgroundsOverlaysBootcamp: View {
    var body: some View {
        //        /// Background - за объектом
        //        /// Overlay - наложение, перед объектом
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //        /// Рамка для текста
        //            .frame(width: 100, height: 100, alignment: .center)
        //            .background(
        ////                Color.red
        ////                LinearGradient(
        ////                    colors: [Color.red, Color.yellow],
        ////                    startPoint: .bottom,
        ////                    endPoint: .top
        ////                )
        //                Circle()
        //                    .fill(Color.blue)
        //            )
        //            .background(
        //                Circle()
        //                    .fill(Color.red)
        //                    .frame(width: 150, height: 150, alignment: .center)
        //            )
        //        /// Наложение на объект текста и добавление заднего фона
        //        Circle()
        //            .fill(Color.pink)
        //            .frame(width: 100, height: 100, alignment: .center)
        //            .overlay(
        //                Text("1")
        //                    .font(.largeTitle)
        //                    .foregroundStyle(Color.white)
        //            )
        //            .background(
        //                Circle()
        //                    .fill(Color.purple)
        //                    .frame(width: 120, height: 120)
        //            )
        //        /// Наложение и изменение заднего фона, с выравниванием
        //        Rectangle()
        //            .frame(width: 100, height: 100)
        //            .overlay(
        //                Rectangle()
        //                    .fill(Color.red)
        //                    .frame(width: 80, height: 80),
        //                alignment: .topLeading
        //            )
        //            .background(
        //                Rectangle()
        //                    .fill(Color.blue)
        //                    .frame(width: 150, height: 150),
        //                alignment: .bottomTrailing
        //            )
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [
                                Color.orange,
                                Color.yellow
                            ],
                            startPoint: .bottom,
                            endPoint: .top
                        )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .yellow.opacity(0.8), radius: 20, x: 0, y: 20)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundStyle(Color.white)
                            )
                            .shadow(
                                color: Color.blue.opacity(0.8), radius: 10,
                                x: 5,
                                y: 5
                            ),
                        alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    BackgroundsOverlaysBootcamp()
}
