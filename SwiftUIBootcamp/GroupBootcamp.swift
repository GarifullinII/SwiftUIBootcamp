//
//  GroupBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 05.12.2024.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello!")
            Text("Hello!")
            Text("Hello!")
            
            Group {
                Text("Hello!")
                Text("Hello!")
            }
            .foregroundStyle(Color.green)
        }
        .foregroundStyle(Color.red)
    }
}

#Preview {
    GroupBootcamp()
}
