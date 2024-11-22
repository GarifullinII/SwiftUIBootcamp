//
//  GradientsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 22.11.2024.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //                Color.red
                /// Линейный
                //                LinearGradient(
                //                    gradient: Gradient(colors: [Color.red, Color.blue, Color.purple, Color.green]),
                //                    startPoint: .topLeading,
                //                    endPoint: .bottom
                //                )
                /// Радиальный
//                RadialGradient(
//                    colors: [Color.blue, Color.white],
//                    center: .center,
//                    startRadius: 5,
//                    endRadius: 200
//                )
                /// Угловой
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .topLeading,
                    angle: .degrees(180 + 45)
                )
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
