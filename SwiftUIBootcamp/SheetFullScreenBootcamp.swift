//
//  SheetFullScreenBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 28.11.2024.
//

import SwiftUI

struct SheetFullScreenBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        /// Sheet - переход от одного экрана к другому
        ///
        ///
        ZStack() {
            Color.purple
                .ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(Color.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.clipShape(.rect(cornerRadius: 10)))
            }
            /// Модификатор можно использовать только один раз .sheet в виде
//            .sheet(isPresented: $showSheet) {
                /// Не следует писать здесь логику, типа если что-то, то показать этот дист, иначе показать этот лист (if... else...)
                /// Всегда показывать только один лист
//                SecondScreen()
//            }
            /// Полноэкранный показ следующего экрана
            .fullScreenCover(isPresented: $showSheet) {
                /// Не добавлять условную логику!!! (if... else... )
                SecondScreen()
            }
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
//                Text("Button")
                Image(systemName: "xmark")
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .padding(20)
//                    .background(Color.white.clipShape(.rect(cornerRadius: 10)))
            }
        }
    }
}

#Preview {
    SheetFullScreenBootcamp()
//    SecondScreen()
}
