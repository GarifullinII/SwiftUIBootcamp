//
//  AnimationCurvesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 27.11.2024.
//

import SwiftUI

struct AnimationCurvesBootcamp: View {
    
    @State var isAnimated: Bool = false
    let timing: Double = 5.0
    
    var body: some View {
        VStack {
            Button("Button: \(isAnimated.description)") {
                isAnimated.toggle()
            }
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 300 : 50, height: 100)
//                .animation(Animation.linear(duration: timing), value: isAnimated)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 300 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing), value: isAnimated)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 300 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing), value: isAnimated)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 300 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing), value: isAnimated)
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 300 : 50, height: 100)
//                .animation(Animation.spring, value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(Animation.spring(
                    response: 1.0,
                    dampingFraction: 0.2,
                    blendDuration: 1.0
                ), value: isAnimated)
        }
    }
}

#Preview {
    AnimationCurvesBootcamp()
}
