//
//  PopOversBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 28.11.2024.
//

import SwiftUI

struct PopOversBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        /// Sheets
        /// Animations
        /// Transitions
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                .font(.largeTitle)
                
                Spacer()
            }
            /// Варианты переходов на другие экраны
            // Method 1 - Sheet
//            .sheet(isPresented: $showView) {
//                SecondView()
//            }
            // Method 2 - Transition
//            ZStack {
//                if showView {
//                    SecondView(showView: $showView)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            // Method 3 - Animation offset
            SecondView(showView: $showView)
                .padding(.top, 100)
                .offset(y: showView ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct SecondView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var showView: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.purple
                .ignoresSafeArea()
            
            Button {
//                presentationMode.wrappedValue.dismiss()
                showView.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color.white)
                    .font(.title)
                    .padding()
            }
        }
    }
}

#Preview {
    PopOversBootcamp()
//        SecondView()
}
