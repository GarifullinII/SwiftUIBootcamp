//
//  ContextMenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 29.11.2024.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = .red
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Image(systemName: "house.fill")
                    .font(.title)
                Text("SwiftUI")
                    .font(.headline)
                Text("How to use context menu")
                    .font(.subheadline)
            }
            .foregroundStyle(Color.white)
            .padding(30)
            .background(Color.blue.clipShape(.rect(cornerRadius: 30)))
            .contextMenu {
                Button {
                    backgroundColor = .yellow
                } label: {
                    Label("Button1", systemImage: "flame.fill")
                }
                Button {
                    backgroundColor = .green
                } label: {
                    Label("Button2", systemImage: "flame.fill")
                }
                Button {
                    backgroundColor = .purple
                } label: {
                    Label("Button3", systemImage: "flame.fill")
                }
            }
        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
