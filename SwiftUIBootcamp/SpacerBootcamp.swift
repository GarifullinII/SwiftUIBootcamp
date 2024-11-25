//
//  SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 25.11.2024.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        /// Spacer - занимает столько места, сколько возможно
        /// Spacer при многократном их использовании имеют одинаковую ширину
        /// Есть длина по умолчанию (8-10), об этом следует помнить! Можно задать minLength - минимальную длину
        VStack {
            HStack(spacing: 0) {
                //            Rectangle()
                //                .frame(width: 100, height: 100)
                //            Spacer(minLength: 150)
                //                .frame(height: 10)
                //                .background(Color.orange)
                //            Rectangle()
                //                .fill(Color.red)
                //                .frame(width: 100, height: 100)
                //            Spacer()
                //                .frame(height: 10)
                //                .background(Color.green)
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(Color.red)
                Image(systemName: "gear")
            }
            /// чтобы задать один размер для всех иконок можно его задавать здесь через .font()
            /// аналогично и цвет .background())
            .font(.title)
//            .background(Color.yellow)
            .padding(.horizontal)
//            .background(Color.blue)
            
            Spacer()
                .frame(width: 10)
                .background(Color.red)
        }
    }
}

#Preview {
    SpacerBootcamp()
}
