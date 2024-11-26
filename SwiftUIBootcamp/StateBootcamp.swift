//
//  StateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 26.11.2024.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State private var backgroundColor: Color = .green
    @State private var count: Int = 0
    @State private var myTitle: String = "My title"
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button one") {
                        self.backgroundColor = .red
                        self.myTitle = "Button one was pressed"
                        self.count += 1
                    }
                    
                    Button("Button two") {
                        self.backgroundColor = .purple
                        self.myTitle = "Button two was pressed"
                        self.count -= 1
                    }
                }
            }
            .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
