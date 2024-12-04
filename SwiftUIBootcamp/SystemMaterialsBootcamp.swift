//
//  SystemMaterialsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 04.12.2024.
//

import SwiftUI

struct SystemMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(
//                .regularMaterial
//                .ultraThickMaterial
                .ultraThinMaterial
//                .thickMaterial
//                .thinMaterial
//                Color.black.opacity(0.5)
            )
            .clipShape(.rect(cornerRadius: 30))
        }
        .ignoresSafeArea()
        .background(
            Image("kite")
        )
    }
}

#Preview {
    SystemMaterialsBootcamp()
}
