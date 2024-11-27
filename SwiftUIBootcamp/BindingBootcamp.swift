//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 26.11.2024.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = .green
    @State var title: String = "Title"
    
    var body: some View {
        /// Привязка свойств
        /// Чаще для связи родительского состояния с дочерним
        /// Binding - привязка, означает, что где-то было объявлено состояние, а мы в другом файле привязываемся к этому состоянию
        ZStack {
            backgroundColor
                .ignoresSafeArea(.all)
            
            VStack {
                Text(title)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingBootcamp()
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    @State var buttonColor: Color = Color.blue
    
    var body: some View {
        Button {
            self.backgroundColor = .blue
            self.buttonColor = .orange
            self.title = "Button pressed"
        } label: {
            Text("Button")
                .foregroundStyle(Color.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .clipShape(.rect(cornerRadius: 10))
        }
    }
}
