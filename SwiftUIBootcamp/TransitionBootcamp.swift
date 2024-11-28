//
//  TransitionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 28.11.2024.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            /// Анимация чего-то, когда оно уже есть в иерархии просмотра
            //            RoundedRectangle(cornerRadius: 30)
            //                .frame(height: UIScreen.main.bounds.height * 0.5)
            //                .opacity(showView ? 1.0 : 0.0)
            //                .animation(.easeInOut)
            
            /// Анимация чего-то, когда оно только появляется в иерархии просмотра
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.move(edge: .bottom))
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
//                    .transition(AnyTransition.scale.animation(.easeInOut))
//                    .animation(.spring(Spring.bouncy))
//                    .animation(.easeOut)
                
//                    .transition(
//                        .asymmetric(
//                            insertion: .move(edge: .leading),
//                            removal: .move(edge: .bottom)
//                        )
//                    )
                /// Анимация с выходом элмента снизу и его исчезновение
                    .transition(
                        .asymmetric(
                            insertion: .move(edge: .bottom),
                            removal: AnyTransition.opacity.animation(.easeInOut)
                        )
                    )
                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
