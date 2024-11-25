//
//  ScrollViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 25.11.2024.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        /// Прокручиваемый список
        /// Для удаления индикатора прокрутки - showsIndicators: false
        /// Элементы V, HStack загружаются сразу, если их более 100 или они содержат весомые элементы (картинки и тд) лучше использовать ленивую загрузку LazyVStack, LazyHStack
        //        ScrollView(.horizontal, showsIndicators: false) {
        //            HStack {
        //                ForEach(0..<50) { _ in
        //                    Rectangle()
        //                        .fill(Color.blue)
        //                        .frame(width: 300,height: 300)
        //                }
        //            }
        //        }
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { _ in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { _ in
                                RoundedRectangle(cornerRadius: 25, style: .circular)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
