//
//  MenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 05.12.2024.
//

import SwiftUI

struct MenuBootcamp: View {
    var body: some View {
        Menu("Click me!") {
            ForEach(0..<10) { x in
                Button("Button: \(x)") {
                    print("Button tapped \(x)")
                }
            }
        }
    }
}

#Preview {
    MenuBootcamp()
}
