//
//  ColorPickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 30.11.2024.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            ColorPicker(selection: $backgroundColor, supportsOpacity: true) {
                Text("Select a color")
                    .foregroundStyle(Color.white)
                    .padding()
            }
            .background(Color.gray)
            .clipShape(.rect(cornerRadius: 10))
            .padding(.horizontal, 100)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
