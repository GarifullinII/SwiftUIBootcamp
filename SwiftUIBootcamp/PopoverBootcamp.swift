//
//  PopoverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 05.12.2024.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            Button("Click me") {
                showPopover.toggle()
            }
            .padding(20)
            .background(Color.yellow)
            .clipShape(.rect(cornerRadius: 10))
            
            /// Тоже самое что .sheet(isPresented: , content: ),  .fullScreenCover(item: , content: )
//            .sheet(isPresented: , content: )
//            .fullScreenCover(item: , content: )
            /// Тоже самое что .sheet(isPresented: , content: ),  .fullScreenCover(item: , content: ) с модификатором .sheet
//            .popover(isPresented: $showPopover) {
//                Text("Hello!")
//                    .presentationCompactAdaptation(
////                        .sheet
//                        .popover
//                    )
//            }
            
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.center)) {
                Text("Hello!")
                    .presentationCompactAdaptation(.popover)
            }
        }
        /// Модификатор .popover отображается на том виде, где мы его отображаем!
//        .popover(isPresented: $showPopover) {
//            Text("Hello!")
//                .presentationCompactAdaptation(
////                        .sheet
//                    .popover
//                )
//        }
    }
}

#Preview {
    PopoverBootcamp()
}
