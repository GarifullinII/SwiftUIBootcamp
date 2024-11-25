//
//  PaddingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 25.11.2024.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        /// По умолчанию .padding() = 10 по всем сторонам
//        Text("Hello, Anna!")
//            .frame(width: 100, height: 100)
//            .background(Color.yellow)
//            .padding(.all, 10)
//            .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 0))
//            .background(Color.blue)
        VStack(alignment: .leading) {
            Text("Hello, Ivan!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align th text tj the leading edge")
        }
//        .background(Color.green)
//        .padding()
//        .background(Color.blue)
//        .padding()
//        .background(Color.red)
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .clipShape(.rect(cornerRadius: 10))
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0, y: 10
                )
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingBootcamp()
}
