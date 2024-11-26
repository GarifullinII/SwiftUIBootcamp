//
//  ExtractingFunctionsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 26.11.2024.
//

import SwiftUI

struct ExtractingFunctionsBootcamp: View {
    
    @State private var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea(.all)
            
            // content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        let extractedExpr = VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("Press me".uppercased())
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(Color.black)
                    .clipShape(.rect(cornerRadius: 10))
            }
        }
        extractedExpr
    }
    
    func buttonPressed() {
        self.backgroundColor = .blue
    }
}

#Preview {
    ExtractingFunctionsBootcamp()
}
