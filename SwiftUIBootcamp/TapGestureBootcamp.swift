//
//  TapGestureBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 03.12.2024.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundStyle(isSelected ? Color.green : Color.purple)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .clipShape(.rect(cornerRadius: 25))
            }
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundStyle(Color.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .clipShape(.rect(cornerRadius: 25))
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            /// Действие при двойном нажатии (кол-во нажатий задаем в count) 
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }

            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    TapGestureBootcamp()
}
